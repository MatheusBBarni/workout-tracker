open ReactNavigation

include NativeStack.Make({
  type params = unit
})

@react.component
let make = () => {
  <Native.NavigationContainer>
    <Navigator>
      <Screen name="Home" component=Home.make />
    </Navigator>
  </Native.NavigationContainer>
}
