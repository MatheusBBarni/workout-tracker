open ReactNative

@react.component
let make = (~navigation as _, ~route as _) => {
  <ScrollView
    contentInsetAdjustmentBehavior=#automatic
    style={
      open Style
      viewStyle(~backgroundColor="white", ())
    }>
    <TouchableOpacity onPress={_ => Js.log("rescript")}>
      <Text
        style={
          open Style
          style(~marginTop=8.->dp, ~fontSize=18., ~fontWeight=#_400, ~color="red", ())
        }>
        {"Hello world RN from Rescript"->React.string}
      </Text>
    </TouchableOpacity>
  </ScrollView>
}
