{shared{
  open Eliom_content.Html5
  open Eliom_content.Html5.F
  open Html5_types
}}

{shared{
  type 'a elt' = 'a Ew_button.elt'
  type element' = Ew_button.element'
}}

{client{
  include Ojw_dropdown_sigs.T
    with type D.element = element'
     and type 'a D.elt = 'a elt'
     and type Traversable.D.element = Ew_traversable.element'
     and type 'a Traversable.D.elt = 'a Ew_traversable.elt'
}}

{shared{
  val li :
    ?a:[< Html5_types.li_attrib > `Class `User_data ]
      Eliom_content.Html5.D.attrib list
  -> href:string
  -> Html5_types.flow5_without_interactive Eliom_content.Html5.D.Raw.elt list
  -> [> Html5_types.li ] Eliom_content.Html5.D.elt
}}

{server{
  val dropdown :
     ?hover:bool
  -> ?hover_timeout:float
  -> element' elt'
  -> Ew_traversable.element' elt'
  -> (element' elt' * Ew_traversable.element' elt')
}}
