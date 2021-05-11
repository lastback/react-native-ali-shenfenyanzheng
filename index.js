
import { NativeModules } from 'react-native';

const { RNAliShenfenyanzheng } = NativeModules;

export async function verifiy(url, certifyId, bizCode) {
  return await RNAliShenfenyanzheng.verifiy(url, certifyId);
}

export async function getBizCode() {
  return await RNAliShenfenyanzheng.getBizCode();
}

// export default RNAliShenfenyanzheng;
