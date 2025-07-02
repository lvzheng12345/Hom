import axios, { AxiosResponse } from '@ohos/axios';

export interface LoginData {
  username: string;
  password: string;
}

interface ApiEndpoints {
  LOGIN: string;
  REGISTER: string;
}

export class HttpUtils {
  // 基础配置
  private static readonly BASE_URL = 'http://192.168.132.17:8085/api';
  
  // API 端点
  public static readonly API: ApiEndpoints = {
    LOGIN: `${HttpUtils.BASE_URL}/users/login`,
    REGISTER: `${HttpUtils.BASE_URL}/users/register`
  };


  // 登录请求
  public static async login(loginData: LoginData): Promise<AxiosResponse> {
    return await axios.post(HttpUtils.API.LOGIN, loginData, {
      headers: {
        'Content-Type': 'application/json'
      }
    });
  }

  // 注册请求
  public static async register(registerData: LoginData): Promise<AxiosResponse> {
    return await axios.post(HttpUtils.API.REGISTER, registerData, {
      headers: {
        'Content-Type': 'application/json'
      }
    });
  }
}










































