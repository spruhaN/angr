# import angr
import sys
import os

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


# if __name__ == "__main__":
#     import sys

#     if len(sys.argv) != 2:
#         print("Usage: python script.py <binary_path>")
#         sys.exit(1)

#     binary_path = sys.argv[1]
#     recovered_types = analyze_program(binary_path)

#     print("Variable Types Inferred:")
#     for offset, types in recovered_types.items():
#         print(f"  Offset: {offset}, Types: {', '.join(types)}")


def process_file(binary_path):
    # input: c file 
    # output: ideally a csv file with the types of the variables
    #TODO: fix the output to be <#, type, type, etc> format
    
    output = os.path.splitext(binary_path)[0] + "-out.csv"
    recovered_types = analyze_program(binary_path)

    with open(output, "w") as f:
        for offset, types in recovered_types.items():
            f.writef("  Offset: {offset}, Types: {', '.join(types)}\n")
    return output
            
def compare_types(A, B):
    # input: two types
    # output: a score between 0 and 1
    types = {"char", "bool", "int_32", "uint_32", "int_8", "uint_8"}
    ints = {"int_32", "uint_32", "int_8", "uint_8"}
    signed_ints = {"int_32", "int_8"}
    unsigned_ints = {"uint_32", "uint_8"}
    ints_8 = {"int_8", "uint_8"}
    int_32 = {"int_32", "uint_32"}
    score = 0
    if A == B:
        score = 1
    elif A in ints and B in ints:
        score = 0.5
        if A in signed_ints and B in signed_ints:
            score += 0.25
        elif A in unsigned_ints and B in unsigned_ints:
            score += 0.25
            
        if A in ints_8 and B in ints_8:
            score += 0.15
        elif A in int_32 and B in int_32:
            score += 0.15
    return score
        
            
def compare_files(file1, file2):
    # input: two csv files
    # output: prints the similarity score between 0 and 1
    with open(file1, "r") as f1, open(file2, "r") as f2:
  
        f1 = [element.strip() for element in f1.readline().split(",")]
        f2 = [element.strip() for element in f2.readline().split(",")]
        
        # num argss
        if f1[0] != f2[0]:
            return 0
            
        # compare typess
        score = 0
        for i in range(1, len(f1)):
            score += compare_types(f1[i], f2[i]) 
        score = score / (len(f1)-1)

        return score    

def main():
    
    fdr = "student_examples"    
    for f in os.listdir(fdr):
        p = os.path.join(fdr, f)
        p_csv = os.path.splitext(p)[0] + ".csv"
        
        if f.endswith(".c"):
            # output = process_file(p)
            output = "student_examples/russ.csv"
            
            # print the scoree
            score = compare_files(p_csv, output) 
            print(f"{score:.2f}" + " " + f)   

main()