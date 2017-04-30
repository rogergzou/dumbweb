# import the file with hirschberg's
import lcs
# import the file with levenshtein's
import lev

# prompts the user for whether they want to use hirschberg's or levenschtein's
alg_fun = (raw_input("Type h for hirschberg, l for levenschtein: "))

# creating the node class
class Node(object):
    def __init__(self, data):
        self.data = data
        self.children = []
        self.parent = None
    
    # allows us to ad a child
    def add_child(self, obj):
        self.children.append(obj)
        
    # allows us to add a parent
    def add_parent(self, obj):
        self.parent = obj
    
    # this function was inspired by stack overflow http://stackoverflow.com/questions/20242479/printing-a-tree-datastructure-in-python
    def __str__(self, level=0):
        ret = "\t"*level+repr(self.data)+"\n"
        for child in self.children:
            ret += child.__str__(level+1)
        return ret
        
    # this function was inspired by stack overflow http://stackoverflow.com/questions/20242479/printing-a-tree-datastructure-in-python
    def __repr__(self):
        return '<tree node representation>'
        
# creates a global list          
glst = []

# dummy values for the bacteria, plant, fish, human so we can test our implementation
bacteria = ("bacteria", "AATA")
plant = ("plant" , "AAAT")    
fish = ("fish", "CCTA")
human = ("human", "GCTG")
chromo14 = ("human chromosome14 sample", "GAATTCGTAGTGCCCTGGTCAGCACAGTCACTCTTGTGATATACTTGGTGTATATACCAGGGTTAATTACTGGTCCAGAAGAACTTAATCTCAAGAGTCAATTTCTAGTTATCCCAACATGGCACGGATAAAATCTTGCAGAAAAAAAATCTTTGTCATTGAGACCAAATTATAGTTTTCATACAGTGGATTTACATTGTTGATGTTTTACTTATGTTTATGTTAGACTTAATTTATATTTGTAGAATCTACTGTTTCTGATTATTTAGAGAATGGGAAACTGAAAGAAATTTTAAAGACATTAAGTGAACATTATTTGTTCTAATGGGTTTCTAGTGAATTTCCTTCAAGGTGGGGCATAGAGATTGAGAGGAGAGGTTTTCTAGGAGAGTCTCAAACAGGAAGACAACCGATATAAGTGTTTATTCCTCTTGGTTGTCAGTGCGTCAGTAAAGCTTCTTTCCTTCTTTTTTCTAGCAGGCAGATAGAAGTTCATGTCACTTTCTCCTTTTTTATGGAGTAGGATGTGATACTCCTTCTAGTGGAAATACCAATCAAATGTCCATGGGTCATGAAGTGTCACTATGTACTCCTGAGCCTCTCTCCAGAAGGGAAAAGGGAACTCCTCTATGGTCAGCTTCTTTTGTAATTTTCCTGTATCATCTCGTGTGCTCTATTTGTTTTCTGAATGAACTTTGGTAAATTTCATCCAGGTAATATAGAGTAATAGTGAAAAACTGCTTAGACTCTAGTTCTATCACTGCTCTTTATGGAATTTTGGGCAAGTTCTTAACATCCTTGTTCCTCAATTCCTCAACTTTAAAATGGGGACAATAATAATTCCTGCTCCAGAGTTGTTGTGAGGGTTAAATAAAAAAATGTGTAAATAGCACTTGACACATACAAGCTGTATCTGATAACCTCCACCTCATGAAAAACCATTCATAGCATAGAAGTATAGAATTTGTACCAGCTAACAAAGGTACAGATGTACAGGGATAAAAACAAAATATTTTGTTTCATGTTAAAGATAAGTGTTTCTGTGATTTGCATTTGTGTGTATAATTTCCTTTAAATATAAATCATATTTCAAGTGAAAATATCGGGTCATTACAGAAGAGTTTATTTTCCAAACCAAAACTTTTTTCATCCCTAATTTTTAATATAGCCTTGTTAAAGAAAAAAACATCTAAGCAGTATGCTATTTATTATTGTCTGTTTTACTTGCAGAATTTGAATGTATTTTGTCAATTATTTTCTCCATTTCATGTTTGGGGAATAGGTCATTCAGAATCAAGTCTATCTTCTACAGCAATATTTTGTTCTTGTTTATGCCCTTGTTTCAATGAGTGCCGCAGTGTACTTATTTTATTACTTCCCTAGAGCAAGTAGATAGAATTTCCTGTTACTTCCTCTGTTTTTGTCATTTGTAATTGACTGGGAAGTACATTATATAGTTACTGCAGTAGATTTATGTTATGGTGTTTTACCTGTCCGTGTTAGAATCGGTTTCCATTTCTGGAATCTGGAATAGGATAATACCTATTTTATTTGAAATTGGACAGATAGTAGCCTTATGTTGGTCCAGATAATCTCATTTCTCATTTGGACAAGATATTTTGGGGTTTGAAAAATTCATATAATGATTAAAGGAGAAAGCTCTTATGAGTTATTGTATGCTGAGATATATGTGGACACACACACACACACACACACACACACACACACGCAGTTTATTGCATTGTTGGGTTTTATACATAAAATTACCCAAGTTGCAAATATATGTCTACCACCCTTGAC")

# tests whether the user wants to use hirschberg's or levenshtein's
# goes by default to levenshtein's
def hirschberg(el_string, second_s) :
    global alg_fun
    if alg_fun == 'h':
        xl = 0 
        if len(el_string) < len(second_s) :
            xl = len(lcs.hershies_rv(el_string, second_s))
        else :
            xl = len(lcs.hershies_rv(second_s, el_string))
        lcs.clr()
        return xl
    elif alg_fun == 'l' :
        ll = lev.lev(el_string, second_s)
        return ll
    else :
        print "Assuming levenschtein. Input: python phylotree.py h for hirschberg"
        alg_fun = 'l'
        hirschberg(el_string, second_s)
        
# take an unsorted element list and sort it
def sort_list (unsorted_lst) :
    root = unsorted_lst.pop(0)
    priority_lst = []
    for element in unsorted_lst :
       y = hirschberg (root[1], element[1])
       priority_lst.append(y)
    priority_lst, unsorted_lst = (list(x) for x in zip(*sorted(zip(priority_lst, unsorted_lst), key =lambda pair: pair[0])))
    unsorted_lst.insert(0,root)
    return unsorted_lst
  
# elements must be a sorted list root, then most similar to root and so on 
#random_elements = [bacteria, human, fish, plant, chromo14]
random_elements = [bacteria, human, fish, plant]
elements = sort_list(random_elements)

#INSERT UP
# node is object to be added to tree, recent is most recently added object
def insert_up (node, recent) :
    if recent.parent == None :
        insert_down(node, recent)
    else:
    # so if the element is more similar to the parent node, keep calling insert up on the parent
        # CASE similar to parent
        if hirschberg (node.data[1], recent.data[1]) < hirschberg (node.data[1], recent.parent.data[1]):  
            insert_up(node, recent.parent)
        # CASE similar to recent
        # if the element is more similar to the recent, then call insert_down
        else :
            insert_down(node, recent)

#INSERT DOWN
# n as node to add, baby as parent node we want to add from
def insert_down(n, baby): 
    # if we each a leaf
    if len(baby.children) == 0 : 
        # create new node, add node as a child to baby, make baby parent to child
        baby.add_child(n)
        n.add_parent(baby)
    # if there's one child, keep traversing
    elif len(baby.children) == 1 :
        # CASE more similar to child
        if hirschberg (n.data[1], baby.children[0].data[1]) >= hirschberg(n.data[1], baby.data[1]) :
        # go to the next child
            insert_down(n, baby.children[0])
        # CASE more similar to 
        else:
            baby.add_child(n)
            n.add_parent(baby)
    # if there's two children
    elif len(baby.children) == 2 : 
    # traverse the branch with more similarity
        if hirschberg (n.data[1],baby.children[0].data[1]) > hirschberg (n.data[1],baby.children[1].data[1]) :
            insert_down(n, baby.children[0])
        else: 
            insert_down(n, baby.children[1])

def create_tree (el = elements) :
    # insert the root
    glst.append( Node (el[0]))
    
    # insert the first child as a node
    glst.append( Node (el[1]))
    
    glst[0].add_child(glst[1])
    glst[1].add_parent(glst[0])
    
    # loop through the rest of the elements, calling insert up as necessary
    dalength = len(el)
    for x in range(2,dalength) :
       glst.append ( Node (el[x]))
       # no need to create glst[x-1] b/c should've already been created in past
       insert_up (glst[x], glst[x - 1])
def clr_glst () :
    global glst
    glst[:] = []
def get_glst () :
    return glst

#create the tree       
#create_tree()

# string of names
def str_dalst (elems = elements):
    name_list = []
    for elemen in elems:
        name_list.append(elemen[0])
    string_name = ', '.join(name_list)
    return string_name

# prints test tree
#print "Phylogenetic Tree of %r" % string_name
#print glst[0]
