import angr

def infer_variable_types(stack_offsets, block):
    variable_types = {}

    for curr_instruction in block.capstone.insns:
        if "[" in curr_instruction.op_str and "]" in curr_instruction.op_str:
            # extracts the offset
            offset = curr_instruction.op_str.split("[")[1].split("]")[0]
            if "rbp" in offset:
                if offset not in variable_types:
                    variable_types[offset] = set()  # so no dups

                if curr_instruction.mnemonic == "movzx":
                    variable_types[offset].add("unsigned")
                    print(f"{offset} inferred to be unsigned because of movzx")
                elif curr_instruction.mnemonic == "movsx":
                    variable_types[offset].add("signed")
                    print(f"{offset} inferred to be signed because of movsx")
                elif curr_instruction.mnemonic in ["add", "sub"]:
                    variable_types[offset].add("integer")
                    print(f"{offset} inferred to be integer because of add/sub")
                elif curr_instruction.mnemonic == "cmp":
                    variable_types[offset].add("integer")
                    print(f"{offset} inferred to be integer because of cmp")
                elif curr_instruction.mnemonic == "and":
                    variable_types[offset].add("boolean")
                    print(f"{offset} inferred to be boolean because of and")
                elif curr_instruction.mnemonic == "imul":
                    variable_types[offset].add("signed_integer")
                    print(f"{offset} inferred to be signed_integer because of imul")
                elif curr_instruction.mnemonic == "div":
                    variable_types[offset].add("integer")
                    print(f"{offset} inferred to be integer because of div")
                elif curr_instruction.mnemonic in ["shr", "shl"]:
                    variable_types[offset].add("integer")
                    print(f"{offset} inferred to be integer because of shifting")
                elif curr_instruction.mnemonic == "or":
                    variable_types[offset].add("boolean")
                    print(f"{offset} inferred to be boolean because of or")
                elif curr_instruction.mnemonic == "test":
                    variable_types[offset].add("boolean")
                    print(f"{offset} inferred to be boolean because of test")

    return variable_types


def analyze_program(binary_path):
    project = angr.Project(binary_path, auto_load_libs=False)

    cfg = project.analyses.CFGEmulated()

    variable_types = {}

    for node in cfg.graph.nodes:
        if node.block:
            stack_offsets = set()
            for curr_instruction in node.block.capstone.insns:
                # if rbp look for offset
                if "rbp" in curr_instruction.op_str:
                    if "[" in curr_instruction.op_str and "]" in curr_instruction.op_str:
                        offset = curr_instruction.op_str.split("[")[1].split("]")[0]
                        if "rbp" in offset:
                            stack_offsets.add(offset)

            # infer types
            types_for_block = infer_variable_types(stack_offsets, node.block)
            for offset, types in types_for_block.items():
                if offset not in variable_types:
                    variable_types[offset] = types
                else:
                    variable_types[offset].update(types)

    return variable_types


if __name__ == "__main__":
    import sys

    if len(sys.argv) != 2:
        print("Usage: python script.py <binary_path>")
        sys.exit(1)

    binary_path = sys.argv[1]
    recovered_types = analyze_program(binary_path)

    print("Variable Types Inferred:")
    for offset, types in recovered_types.items():
        print(f"  Offset: {offset}, Types: {', '.join(types)}")