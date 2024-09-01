<template>
  <div class="login-container">
    <el-form
      ref="loginForm"
      :model="loginForm"
      :rules="loginRules"
      class="login-form"
      auto-complete="on"
      label-position="left"
    >
      <!-- 标题 -->
      <div class="title-container">
        <h3 class="title">在线考试管理系统-登录界面</h3>
      </div>

      <!-- 用户名 -->
      <el-form-item prop="username">
        <span class="svg-container">
          <svg-icon icon-class="user" />
        </span>
        <el-input
          ref="username"
          v-model="loginForm.username"
          class="yuan"
          placeholder="请输入用户名"
          name="username"
          type="text"
          tabindex="1"
          auto-complete="on"
        />
      </el-form-item>

      <!-- 密码 -->
      <el-form-item prop="password">
        <span class="svg-container">
          <svg-icon icon-class="password" />
        </span>
        <el-input
          :key="passwordType"
          ref="password"
          v-model="loginForm.password"
          class="yuan"
          :type="passwordType"
          placeholder="请输入密码"
          name="password"
          tabindex="2"
          auto-complete="on"
        />
        <span class="show-pwd" @click="showPwd">
          <svg-icon
            :icon-class="passwordType === 'password' ? 'eye' : 'eye-open'"
          />
        </span>
      </el-form-item>

      <!-- 验证码 -->
      <el-row>
        <el-col :span="16">
          <el-form-item prop="code">
            <span class="svg-container">
              <svg-icon icon-class="password" />
            </span>
            <el-input
              ref="code"
              v-model="loginForm.code"
              class="yuan"
              placeholder="请输入验证码"
              name="code"
              type="text"
              tabindex="3"
              auto-complete="off"
              @keyup.enter.native="handleLogin"
            />
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <img :src="url" alt="加载失败" width="150px" height="50px" style="cursor:pointer; margin-top: 2px" @click="handleCheckCode">
        </el-col>
      </el-row>

      <!-- 登录按钮 -->
      <div style="height: 40px; margin-bottom: 30px">
        <el-button
          :loading="loading"
          type="primary"
          style="width: 48%; float: left"
          @click.native.prevent="handleLogin"
        >登录</el-button>
        <el-button
          :loading="loading"
          type="success"
          style="width: 48%; float: right"
          @click.native.prevent="handleRegister"
        >注册</el-button>
      </div>

<!--      &lt;!&ndash; 提示 &ndash;&gt;
      <div>
        <div class="tips">
          <span style="margin-right: 20px">管理员 username: admin</span>
          <span> password: admin</span>
        </div>
        <div class="tips">
          <span style="margin-right: 20px">学生 username: wangpeng</span>
          <span> password: 123456</span>
        </div>
      </div>-->
    </el-form>
  </div>
</template>

<script>
import {
  getCode
} from '@/api/system/user'
export default {
  name: 'Login',
  data() {
    return {
      url: null,
      loginForm: {
        username: null,
        password: null,
        key: null,
        code: null
      },
      loginRules: {
        username: [
          { required: true, message: '请输入用户名', trigger: 'blur' }
        ],
        password: [
          { required: true, message: '请输入密码', trigger: 'blur' }
        ],
        code: [
          { required: true, message: '请输入验证码', trigger: 'blur' }
        ]
      },
      loading: false,
      passwordType: 'password',
      redirect: undefined
    }
  },
  created() {
    this.handleCheckCode()
  },
  mounted() {
    this.loginForm.username = this.$route.query.username
    this.loginForm.password = this.$route.query.password
  },
  methods: {
    // 显示密码
    showPwd() {
      if (this.passwordType === 'password') {
        this.passwordType = ''
      } else {
        this.passwordType = 'password'
      }
      this.$nextTick(() => {
        this.$refs.password.focus()
      })
    },
    // 切换验证码
    handleCheckCode() {
      getCode().then((res) => {
        this.loginForm.key = res.data.key
        this.url = res.data.img
      })
    },
    // 登录
    handleLogin() {
      this.$refs.loginForm.validate((valid) => {
        if (valid) {
          this.loading = true
          this.$store
            .dispatch('user/login', this.loginForm)
            .then(() => {
              this.$router.push({ path: '/' }) // 无脑进首页
              this.loading = false
            })
            .catch((message) => {
              this.$message.error(message)
              // 刷新验证码
              this.handleCheckCode()
              this.loading = false
            })
        } else {
          console.log('不允许提交!')
          return false
        }
      })
    },
    // 注册
    handleRegister() {
      this.$router.push({ path: '/register' }) // 进注册页面
    }
  }
}
</script>

<style lang="scss">
/* 修复input 背景不协调 和光标变色 */
/* Detail see https://github.com/PanJiaChen/vue-element-admin/pull/927 */

$bg: rgba(65, 205, 239, 0.918); // 
$light_gray: rgba(211, 214, 242, 0.5); // 半透明的白色
$cursor: rgba(255, 255, 255, 0.5); // 半透明的白色光标

@supports (-webkit-mask: none) and (not (cater-color: $cursor)) {
  .login-container .el-input input {
    color: $cursor;
  }
}
.login-container{

}

/* reset element-ui css */
.login-container {

  .el-input.yuan {
    display: inline-block;
    height: 47px;
    width: 85%;
    
    input {
      background: transparent;
      border: 0px;
      -webkit-appearance: none;
      border-radius: 0px;
      padding: 12px 5px 12px 15px;
      color: $light_gray;
      height: 47px;
      caret-color: $cursor;

      &:-webkit-autofill {
        box-shadow: 0 0 0px 1000px $bg inset !important;
        -webkit-text-fill-color: $cursor !important;
      }
    }
  }

  .el-input {
    display: inline-block;
    height: 47px;
    width: 100%;

    input {
      background: transparent;
      border: 0px;
      -webkit-appearance: none;
      border-radius: 0px;
      padding: 12px 5px 12px 15px;
      color: $light_gray;
      height: 47px;
      caret-color: $cursor;

      &:-webkit-autofill {
        box-shadow: 0 0 0px 1000px $bg inset !important;
        -webkit-text-fill-color: $cursor !important;
      }
    }
  }

  .el-form-item {
    border: 1px solid rgba(255, 255, 255, 0.1);
    background: rgba(0, 0, 0, 0.1);
    border-radius: 5px;
    color: #454545;
  }
}
</style>

<style lang="scss" scoped>
$bg: #5d6076;
$dark_gray: #26b654;
$light_gray: #eee;

.login-container {
  min-height: 100%;
  width: 100%;
  // background-color: $bg;
  overflow: hidden;
  background:url('../../assets/56.gif')  no-repeat;
  background-size: cover;

  .login-form {
    position: relative;
    width: 520px;
    max-width: 100%;
    padding: 160px 35px 0;
    margin: 0 auto;
    overflow: hidden;
  }

  .tips {
    font-size: 14px;
    color: #fff;
    margin-bottom: 10px;

    span {
      &:first-of-type {
        margin-right: 16px;
      }
    }
  }

  .svg-container {
    padding: 6px 5px 6px 15px;
    color: $dark_gray;
    vertical-align: middle;
    width: 30px;
    display: inline-block;
  }

  .title-container {
    position: relative;

    .title {
      font-size: 26px;
      color: $light_gray;
      margin: 0px auto 40px auto;
      text-align: center;
      font-weight: bold;
    }
  }

  .show-pwd {
    position: absolute;
    right: 10px;
    top: 7px;
    font-size: 16px;
    color: $dark_gray;
    cursor: pointer;
    user-select: none;
  }
}
</style>
