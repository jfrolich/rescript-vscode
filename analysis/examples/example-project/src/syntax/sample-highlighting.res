// Bindings
let numberBinding = 123

let someFunction = (param: int): int => {
  let innerBinding = param + 2
  innerBinding
}

// Types
type someRecord<'typeParameter> = {
  someField: int,
  someOtherField: string,
  theParam: typeParameter,
}

type someEnum =
  | SomeMember
  | AnotherMember
  | SomeMemberWithPayload(someRecord<int>)

type somePolyEnum = [
  | #someMember
  | #AnotherMember
  | #SomeMemberWithPayload(someRecord<int>)
  | #"fourth Member"
]

// Destructuring
let destructuring = () => {
  let someVar = (1, 2, 3)
  let (one, two, three) = someVar
  let someObj: someRecord<int> = {
    someField: 1,
    someOtherField: "hello",
    theParam: 2,
  }
  let {someField, someOtherField, theParam} = someObj

  someField
}

module SomeModule = {
  type t = Some | Value | Here
}

// JSX
module SomeComponent = {
  @react.component
  let make = (
    ~someProp: int,
    ~otherProp: string,
    ~thirdProp: SomeModule.t,
    ~fourth: somePolyEnum=#"fourth member",
  ) => {
    React.null
  }
}

let jsx =
  <div>
    <SomeComponent someProp=123 otherProp="hello" thirdProp=Value fourth=#AnotherMember />
  </div>