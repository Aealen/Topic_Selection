@Component
struct CKBox{

  @Link isSel:boolean
  @Prop showText:string

  build(){
    Row({space:0}){
      Checkbox({name:"sel"})
        .select(false)
        .height(16)
        .width(16)
        .onChange((value:boolean)=>{
          this.isSel=value
        })

      Text(this.showText)
        .fontSize(14)

    }.width("100%")
    .margin({bottom:16})
  }
}
export default CKBox