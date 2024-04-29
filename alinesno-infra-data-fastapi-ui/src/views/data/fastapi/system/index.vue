<template>
   <div class="app-container">
    <div class="label-title">
      <div class="tip">企业主题配置</div>
      <div class="sub-tip">根据企业自定义主题，配置团队或者企业界面</div>
    </div>
    <div class="form-container" >
      <el-form
        :model="form"
        :rules="rules"
        v-loading="loading"
        ref="form"
        label-width="180px"
        class="demo-form">

        <el-form-item label="登陆提示信息" prop="themeCode">
          <el-input type="input" show-word-limit v-model="form.themeCode" readonly placeholder="请输入主题代码">
            <el-button slot="append" @click="configTheme()" icon="el-icon-edit">配置品牌</el-button>
          </el-input>
        </el-form-item>

        <el-form-item label="登陆Logo" prop="loginStyle">
          <el-row>
            <el-col :span="17" v-for="(o, index) in loginStyle" :key="index" :offset="index > 0 ? 1 : 0">

              <el-card :body-style="{ padding: '0px !important' }" shadow="never">
                <img :src="'http://data.linesno.com/icons/login/style-0'+(index+1)+'.png'" class="image">
                <div style="padding: 14px;">
                  <span>{{ o.desc }}</span>
                  <div class="bottom clearfix">
                    <el-button @click="selectStyle(o)" type="text" class="button">选择</el-button>
                  </div>
                </div>
              </el-card>
            </el-col>
          </el-row>
        </el-form-item>

        <el-form-item label="登陆Banner" prop="loginStyle">
          <el-row>
            <el-col :span="17" v-for="(o, index) in loginStyle" :key="index" :offset="index > 0 ? 1 : 0">

              <el-card :body-style="{ padding: '0px !important' }" shadow="never">
                <img :src="'http://data.linesno.com/icons/login/style-0'+(index+2)+'.png'" class="image">
                <div style="padding: 14px;">
                  <span>{{ o.desc }}</span>
                  <div class="bottom clearfix">
                    <el-button @click="selectStyle(o)" type="text" class="button">选择</el-button>
                  </div>
                </div>
              </el-card>
            </el-col>
          </el-row>
        </el-form-item>

        <el-row>
            <el-col :span="24">
               <el-form-item label="权限年份" prop="defaultIndex">
                  <el-input type="input" maxlength="500" show-word-limit v-model="form.defaultIndex" placeholder="权限年份"></el-input>
               </el-form-item>
            </el-col> 
            <el-col :span="24">
               <el-form-item label="版权信息" prop="defaultIndex">
                  <el-input type="input" maxlength="500" show-word-limit v-model="form.defaultIndex" placeholder="版权信息"></el-input>
               </el-form-item>
            </el-col> 
        </el-row>

<!--        <el-form-item label="登陆验证码">-->
<!--          <el-switch v-model="form.enableValidate"-->
<!--            :active-value="1"-->
<!--            :inactive-value="0"-->
<!--          ></el-switch>-->
<!--        </el-form-item>-->

        <br/>

        <el-form-item>
          <el-button type="primary" @click="submitForm('form')">
            保存
          </el-button>
          <el-button @click="resetForm">
            重置
          </el-button>
        </el-form-item>
      </el-form>
    </div>
  </div>
</template>

<script>

//   import {
//     addLoginSetting,
//     updateLoginSetting,
//     getCurrentConfig } from "@/api/business/OauthLoginSetting";

//   import ImageUpload from "alinesno-ui/packages/ImageUpload"

  export default {

   //  components:{
   //    ImageUpload
   //  },
    data() {
      return {
        loginStyle:[
          {id:'1' , icon:'asserts/images/style-01.png' , desc:'经典版本的登陆UI，提供更加流畅的交互体验'} ,
        ],
        logoStyle:[
          {id:'3' , icon:'asserts/images/style-03.png' , desc:'平台版本的登陆界面，大气简洁的登陆界面，更贴近平台化'} ,
        ],
        theme: null , 
        form: {
          themeCode: null , 
          loginStyle:'1' ,
          enableSociety: '1' ,
          enableFindPwd: '1' ,
          logoImg: '' ,
          lockTime: 250 ,
          errorCount: 5,
          defaultIndex: '' , 
          enableValidate: '1',
        },
        // 表单参数
        rules: {
          logoTitle: [
            { required: true, message: "请输入登陆标题", trigger: "blur" },
          ],
          logoTitle: [
            { required: true, message: "请输入登陆标题", trigger: "blur" },
          ],
          loginDescription: [
            { required: true, message: "请输入登陆描述", trigger: "blur" },
          ],
          loginLogo: [
            { required: true, message: "请至少上传一张Logo图", trigger: "blur" },
          ],
          logoBackgroun: [
            { required: true, message: "请至少上传一张背景图", trigger: "blur" },
          ],
          defaultIndex: [
            { required: true, message: "请输入默认主页", trigger: "blur" },
            { type: 'url',message: "请输入正确的链接地址",trigger: 'blur'},
          ],
        },
        currentSiteId: null,
        // 遮罩层
        loading: false ,
      };
    },
    created(){
      // this.getSetting();
    },
    methods: {
      // getSetting(){
      //   getCurrentConfig().then(response => {

      //     if(response.theme.id != null){
      //       this.form = response.data ;
      //       this.theme = response.theme ;
            
      //       if(this.theme){
      //         this.form.themeCode = response.theme.themeCode ;
      //       }

      //     }
      //   })
      // },
      // uploadImg(data){
      //   console.log('data = ' + data) ;
      // } , 
      // selectStyle(item){
      //   this.form.loginStyle = item.id;  
      //   console.log('item = ' + item.id) ;
      // } ,
      // copySuccess() {
      //   this.$message.success("复制成功")
      // },
      // configTheme(){
      //   this.$router.push('/business/theme/settings') ;
      // },
      // submitForm(formName) {
      //   this.$refs[formName].validate((valid) => {
      //     if (valid) {
      //       this.loading = true ;
      //       if (this.form.id != null) {
      //         updateLoginSetting(this.form).then(response => {
      //           this.msgSuccess("修改成功");
      //           this.loading = false ;
      //         });
      //       } else {
      //         addLoginSetting(this.form).then(response => {
      //           this.msgSuccess("新增成功");
      //           this.loading = false ;
      //         });
      //       }
      //     }
      //   });
      // },
      // resetForm() {
      //   this.$refs["form"].resetFields();
      //   this.getSetting();
      // }
    },
  };
</script>

<style scoped lang="scss">
  .form-container {
    max-width: 960px;
    margin-left: auto;
    margin-right: auto;
    margin-top: 20px;
  }

  .label-title {
    text-align: center;
    max-width: 960px;
    margin-left: auto;
    margin-right: auto;
    margin-top: 10px;

    .tip {
      padding-bottom: 10px;
      font-size: 26px;
      font-weight: bold;
    }

    .sub-tip {
      font-size: 13px;
      text-align: center;
      padding: 10px;
    }
  }

  .image{
    width:100%;
    height: 120px ;
  }

  .select-card {
    border: 1px solid rgb(0, 91, 212) ;
  }
</style>


