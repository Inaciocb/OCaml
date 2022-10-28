# #use "topfind";;
- : unit = ()
Findlib has been successfully loaded. Additional directives:
...
  #require "package";;      to load a package
...

- : unit = ()
# #require "graphics";;
/Users/me/.opam/4.14.0/lib/graphics: added to search path
/Users/me/.opam/4.14.0/lib/graphics/graphics.cma: loaded

open Graphics;;

open_graph " 640x480";;

for i = 12 downto 1 do
  let radius = i * 20 in
    set_color (if i mod 2 = 0 then red else yellow);
    fill_circle 320 240 radius
done;;

read_line ();;

Random.self_init ();;

Graphics.open_graph " 640x480";;

let rec iterate r x_init i =
  if i = 1 then x_init else
    let x = iterate r x_init (i - 1) in
      r *. x *. (1.0 -. x);;

for x = 0 to 639 do
  let r = 4.0 *. (float_of_int x) /. 640.0 in
  for i = 0 to 39 do
    let x_init = Random.float 1.0 in
    let x_final = iterate r x_init 500 in
    let y = int_of_float (x_final *. 480.) in
      Graphics.plot x y
  done
done;;

read_line ();;

