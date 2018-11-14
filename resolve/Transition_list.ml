let t_l ((name, json) : (string * Yojson.Basic.json)) =
  let open Yojson.Basic.Util 
  in
  let transition = json |> to_list 
  in
  let rec loop lst acc =
    match lst with
    | head :: tail -> loop tail (acc @ [Transition_object.t_o head])
    | [] -> (name, acc)
  in
  loop transition []