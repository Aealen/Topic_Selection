


@Component
struct BasicLabel{
  @Prop labelValue:string

  build(){
    Column(){
      Text(this.labelValue)
        .fontSize(32)
        .fontWeight(700)
        .margin(5)
        .textAlign(TextAlign.Start)
        .width("100%")
    }.margin({top:"10%"})
  }
}
export default BasicLabel