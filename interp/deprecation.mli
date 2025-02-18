(************************************************************************)
(*         *   The Coq Proof Assistant / The Coq Development Team       *)
(*  v      *         Copyright INRIA, CNRS and contributors             *)
(* <O___,, * (see version control and CREDITS file for authors & dates) *)
(*   \VV/  **************************************************************)
(*    //   *    This file is distributed under the terms of the         *)
(*         *     GNU Lesser General Public License Version 2.1          *)
(*         *     (see LICENSE file for the text of the license)         *)
(************************************************************************)

type t = { since : string option ; note : string option }

val make : ?since:string -> ?note:string -> unit -> t

val create_warning : object_name:string -> warning_name_if_no_since:string ->
  ('b -> Pp.t) -> ?loc:Loc.t -> 'b * t -> unit
