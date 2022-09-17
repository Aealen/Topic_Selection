
@Component
struct BasicInput{

  @Prop placeholder:string

  @Link inputVaule:string

  private inputType:InputType=InputType.Normal

  build(){
    Column(){
      TextInput({placeholder:this.placeholder,text:this.inputVaule})
        .margin({top:8,bottom:8})
        .type(this.inputType)
        .height(48)
    }.margin({top:24})
  }
}
export default BasicInput

