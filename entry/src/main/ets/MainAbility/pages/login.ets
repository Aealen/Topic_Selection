
import BasicLabel from "../common/component/BasicLabel"
import BasicInput from "../common/component/BasicInput"
import GoRegBtn from "../common/component/LabelBtn"
import CKBox from "../common/component/CKBox"


@Styles function logBtn(){
  .width("100%")
  .height(48)
  .padding(8)
  .borderRadius(8)
  .backgroundColor("#ff2ea3d9")
}

@Styles function roleBtn(){
  .layoutWeight(1)
  .height(38)
  .padding(8)
  .borderRadius(8)

}


@Entry
@Preview
@Component
struct Login{

  //role: 0:student 1:teacher
  @State role:number=0
  @State username:string=""
  @State password:string=""
  @State acceptRule:boolean=false



  build(){
    Column(){
        BasicLabel({
          labelValue:"账号登陆"
        })

      BasicInput({
        placeholder:"请输入学号/工号"
        ,inputVaule:$username
        ,inputType:InputType.Normal
      })
      BasicInput({
        placeholder:"请输入密码"
      ,inputVaule:$password
      ,inputType:InputType.Password

      })
      Row(){
        //这里按钮功能应该可以封装成一个ets  留坑以后做
        Button("我是学生",{type:ButtonType.Normal})
          .roleBtn()
          .margin({right:5})
          .onClick(()=>{
            this.role=0
          })
          .backgroundColor(0==this.role?Color.White: "#ffe9e1e1")
          .fontColor(0==this.role ? "#ff3987be" : "#ffbab3b3")
          .borderColor(0==this.role ? "#ff3987be" : "#ffbab3b3")
          .borderWidth(0==this.role?1:0)

        Button("我是教师",{type:ButtonType.Normal})
          .roleBtn()
          .margin({left:5})
          .onClick(()=>{
            this.role=1
          })
          .backgroundColor(1==this.role ? Color.White : "#fff5ecec")
          .fontColor(1==this.role ? "#ff3987be" : "#ffbab3b3")
          .borderColor(1==this.role ? "#ff3987be" : "#ffbab3b3")
          .borderWidth(1==this.role?1:0)


      }
      .margin({top:24,bottom:16})

      Button("登陆",{type: ButtonType.Normal})
        .logBtn()
        .fontSize(24)
        .margin({top:16})

      GoRegBtn({showText:"我还没有账号? 快去注册."})

      Blank()
      CKBox({isSel:$acceptRule,showText:"已阅读并同意<<隐私政策>>和<<用户协议>>"})

    }
    .width("90%")
    .margin({left:"5%",right:"5%"})
    .height("100%")

  }
}