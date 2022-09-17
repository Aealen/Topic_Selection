import router from '@system.router';


@Component
struct GoRegBtn{
  @Prop showText:string


  build(){

    Column(){
      Text(this.showText)
        .backgroundColor(Color.White)
        .fontColor("#ffbab3b3")
        .width(200)
        .height(16)
        .fontSize(16)
        .onClick(()=>{
            router.push({uri:"pages/reg"})
        })
    }.width("100%").alignItems(HorizontalAlign.Start)
    .margin({top:12})
  }
}
export default GoRegBtn