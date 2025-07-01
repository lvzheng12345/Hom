import { preferences } from '@kit.ArkData'
import { common } from '@kit.AbilityKit'

export class PreferenceUtil {
  private static instance: PreferenceUtil
  private pr: preferences.Preferences | null = null

  // 单例模式
  static getInstance(): PreferenceUtil {
    if (!PreferenceUtil.instance) {
      PreferenceUtil.instance = new PreferenceUtil()
    }
    return PreferenceUtil.instance
  }

  // 初始化 Preferences
  async init(context: common.UIAbilityContext, name: string = 'myPrefs') {
    if (!this.pr) {
      this.pr = await preferences.getPreferences(context, name)
    }
  }

  // 存储数据
  async put(key: string, value: string | number | boolean) {
    await this.pr?.put(key, value)
    await this.pr?.flush()
  }

  // 读取数据
  async get(key: string, defaultValue: string | number | boolean = '') {
    return await this.pr?.get(key, defaultValue)
  }

  // 删除数据
  async delete(key: string) {
    await this.pr?.delete(key)
    await this.pr?.flush()
  }

  // 清空所有数据
  async clear() {
    await this.pr?.clear()
    await this.pr?.flush()
  }
}