open ReactNative

@react.component
let make = (~navigation as _, ~route as _) => {
  <ScrollView
    contentInsetAdjustmentBehavior=#automatic
    style={
      open Style
      viewStyle(~backgroundColor="red", ())
    }>
    <TouchableOpacity onPress={_ => Js.log("rescript")}>
      <Text
        style={
          open Style
          style(~marginTop=20.->dp, ~fontSize=50., ~fontWeight=#_400, ~color="red", ())
        }>
        {"Hello world RN from Rescript and WSL2"->React.string}
      </Text>
    </TouchableOpacity>
  </ScrollView>
}
