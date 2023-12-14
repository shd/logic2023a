type list = Nil | Cons of int * list | Node of int * list * list;; 

let rec length l = match l with
    Nil -> 0
  | Cons (_, tl) -> length tl + 1
  | Node (_, lf, rt) -> length lf + length rt + 1;;

let rec depth t = match t with
    Nil -> 0
  | Cons (_, tl) -> depth tl + 1
  | Node (_, lf, rt) -> max (depth lf) (depth rt) + 1;;

let ll = Cons (3, Cons (4, Cons (5, Nil)));;
let tt = ll;; let tt = Node (5, ll, ll);;
print_int (length tt);;
print_string "\n";;

print_int (depth tt);;
print_string "\n";;