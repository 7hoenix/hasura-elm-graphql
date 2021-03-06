-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Hasura.Query exposing (OnlineUsersOptionalArguments, TodosByPkRequiredArguments, TodosOptionalArguments, UsersByPkRequiredArguments, UsersOptionalArguments, online_users, todos, todos_by_pk, users, users_by_pk)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Hasura.Enum.Online_users_select_column
import Hasura.Enum.Todos_select_column
import Hasura.Enum.Users_select_column
import Hasura.InputObject
import Hasura.Interface
import Hasura.Object
import Hasura.Scalar
import Hasura.ScalarCodecs
import Hasura.Union
import Json.Decode as Decode exposing (Decoder)


type alias OnlineUsersOptionalArguments =
    { distinct_on : OptionalArgument (List Hasura.Enum.Online_users_select_column.Online_users_select_column)
    , limit : OptionalArgument Int
    , offset : OptionalArgument Int
    , order_by : OptionalArgument (List Hasura.InputObject.Online_users_order_by)
    , where_ : OptionalArgument Hasura.InputObject.Online_users_bool_exp
    }


{-| fetch data from the table: "online\_users"

  - distinct\_on - distinct select on columns
  - limit - limit the number of rows returned
  - offset - skip the first n rows. Use only with order\_by
  - order\_by - sort the rows by one or more columns
  - where\_ - filter the rows returned

-}
online_users : (OnlineUsersOptionalArguments -> OnlineUsersOptionalArguments) -> SelectionSet decodesTo Hasura.Object.Online_users -> SelectionSet (List decodesTo) RootQuery
online_users fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { distinct_on = Absent, limit = Absent, offset = Absent, order_by = Absent, where_ = Absent }

        optionalArgs =
            [ Argument.optional "distinct_on" filledInOptionals.distinct_on (Encode.enum Hasura.Enum.Online_users_select_column.toString |> Encode.list), Argument.optional "limit" filledInOptionals.limit Encode.int, Argument.optional "offset" filledInOptionals.offset Encode.int, Argument.optional "order_by" filledInOptionals.order_by (Hasura.InputObject.encodeOnline_users_order_by |> Encode.list), Argument.optional "where" filledInOptionals.where_ Hasura.InputObject.encodeOnline_users_bool_exp ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "online_users" optionalArgs object_ (identity >> Decode.list)


type alias TodosOptionalArguments =
    { distinct_on : OptionalArgument (List Hasura.Enum.Todos_select_column.Todos_select_column)
    , limit : OptionalArgument Int
    , offset : OptionalArgument Int
    , order_by : OptionalArgument (List Hasura.InputObject.Todos_order_by)
    , where_ : OptionalArgument Hasura.InputObject.Todos_bool_exp
    }


{-| fetch data from the table: "todos"

  - distinct\_on - distinct select on columns
  - limit - limit the number of rows returned
  - offset - skip the first n rows. Use only with order\_by
  - order\_by - sort the rows by one or more columns
  - where\_ - filter the rows returned

-}
todos : (TodosOptionalArguments -> TodosOptionalArguments) -> SelectionSet decodesTo Hasura.Object.Todos -> SelectionSet (List decodesTo) RootQuery
todos fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { distinct_on = Absent, limit = Absent, offset = Absent, order_by = Absent, where_ = Absent }

        optionalArgs =
            [ Argument.optional "distinct_on" filledInOptionals.distinct_on (Encode.enum Hasura.Enum.Todos_select_column.toString |> Encode.list), Argument.optional "limit" filledInOptionals.limit Encode.int, Argument.optional "offset" filledInOptionals.offset Encode.int, Argument.optional "order_by" filledInOptionals.order_by (Hasura.InputObject.encodeTodos_order_by |> Encode.list), Argument.optional "where" filledInOptionals.where_ Hasura.InputObject.encodeTodos_bool_exp ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "todos" optionalArgs object_ (identity >> Decode.list)


type alias TodosByPkRequiredArguments =
    { id : Int }


{-| fetch data from the table: "todos" using primary key columns
-}
todos_by_pk : TodosByPkRequiredArguments -> SelectionSet decodesTo Hasura.Object.Todos -> SelectionSet (Maybe decodesTo) RootQuery
todos_by_pk requiredArgs object_ =
    Object.selectionForCompositeField "todos_by_pk" [ Argument.required "id" requiredArgs.id Encode.int ] object_ (identity >> Decode.nullable)


type alias UsersOptionalArguments =
    { distinct_on : OptionalArgument (List Hasura.Enum.Users_select_column.Users_select_column)
    , limit : OptionalArgument Int
    , offset : OptionalArgument Int
    , order_by : OptionalArgument (List Hasura.InputObject.Users_order_by)
    , where_ : OptionalArgument Hasura.InputObject.Users_bool_exp
    }


{-| fetch data from the table: "users"

  - distinct\_on - distinct select on columns
  - limit - limit the number of rows returned
  - offset - skip the first n rows. Use only with order\_by
  - order\_by - sort the rows by one or more columns
  - where\_ - filter the rows returned

-}
users : (UsersOptionalArguments -> UsersOptionalArguments) -> SelectionSet decodesTo Hasura.Object.Users -> SelectionSet (List decodesTo) RootQuery
users fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { distinct_on = Absent, limit = Absent, offset = Absent, order_by = Absent, where_ = Absent }

        optionalArgs =
            [ Argument.optional "distinct_on" filledInOptionals.distinct_on (Encode.enum Hasura.Enum.Users_select_column.toString |> Encode.list), Argument.optional "limit" filledInOptionals.limit Encode.int, Argument.optional "offset" filledInOptionals.offset Encode.int, Argument.optional "order_by" filledInOptionals.order_by (Hasura.InputObject.encodeUsers_order_by |> Encode.list), Argument.optional "where" filledInOptionals.where_ Hasura.InputObject.encodeUsers_bool_exp ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "users" optionalArgs object_ (identity >> Decode.list)


type alias UsersByPkRequiredArguments =
    { id : String }


{-| fetch data from the table: "users" using primary key columns
-}
users_by_pk : UsersByPkRequiredArguments -> SelectionSet decodesTo Hasura.Object.Users -> SelectionSet (Maybe decodesTo) RootQuery
users_by_pk requiredArgs object_ =
    Object.selectionForCompositeField "users_by_pk" [ Argument.required "id" requiredArgs.id Encode.string ] object_ (identity >> Decode.nullable)
