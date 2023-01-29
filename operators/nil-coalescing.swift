// nil coalescing                                                               
var operand: String? = "unknown"                                                
print("Assign nil to var(Y/n)? ")                                               
let ans = readLine(strippingNewline: true)                                      
if ans == "Y" {                                                                 
    operand = nil                                                               
} else if ans == "n" {                                                          
    operand = "not-nil"                                                         
}                                                                               
let result: String = operand ?? "nil"                                           
print("You assigned \(result)")         
