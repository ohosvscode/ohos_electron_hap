/*
 * Copyright (c) 2023-2025 Haitai FangYuan Co., Ltd.
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice, this list of
 *    conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice, this list
 *    of conditions and the following disclaimer in the documentation and/or other materials
 *    provided with the distribution.
 *
 * 3. Neither the name of the copyright holder nor the names of its contributors may be used
 *    to endorse or promote products derived from this software without specific prior written
 *    permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
 * ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

import lazy { BluetoothAdapter } from '../adapter/BluetoothAdapter';
import Inject from '../common/InjectModule';
import JsBindingUtils from '../utils/JsBindingUtils';

function implBluetoothAdapter(): BluetoothAdapter {
  return Inject.getOrCreate(BluetoothAdapter);
}

function GetAdapterName(): string {
  return implBluetoothAdapter().getAdapterName();
}

function SetAdapterName(name: string): boolean {
  return implBluetoothAdapter().setAdapterName(name);
}

function GetBluetoothState(): number {
  return implBluetoothAdapter().getBluetoothState();
}

function EnableBluetooth(): void {
  return implBluetoothAdapter().enableBluetooth();
}

function DisableBluetooth(): void {
  return implBluetoothAdapter().disableBluetooth();
}

function StartBluetoothStateMonitor(bluetoothStateCb: (state: number) => void): void {
  return implBluetoothAdapter().startBluetoothStateMonitor(bluetoothStateCb);
}

function StopBluetoothStateMonitor(): void {
  return implBluetoothAdapter().stopBluetoothStateMonitor();
}

function GetBluetoothScanMode(): number {
  return implBluetoothAdapter().getBluetoothScanMode();
}

function SetBluetoothScanMode(mode: number, duration: number): void {
  return implBluetoothAdapter().setBluetoothScanMode(mode, duration);
}

function StartBluetoothDiscovery(): void {
  return implBluetoothAdapter().startBluetoothDiscovery();
}

function StopBluetoothDiscovery(): void {
  return implBluetoothAdapter().stopBluetoothDiscovery();
}

function StartDiscoveryMonitor(deviceListCb: (deviceList: Array<string>) => void): void {
  return implBluetoothAdapter().startDiscoveryMonitor(deviceListCb);
}

function StopDiscoveryMonitor(): void {
  return implBluetoothAdapter().stopDiscoveryMonitor();
}

function GetRemoteDeviceName(device_id: string): string {
  return implBluetoothAdapter().getRemoteDeviceName(device_id);
}

function GetPairState(device_id: string): number {
  return implBluetoothAdapter().getPairState(device_id);
}

function GetRemoteDeviceClass(deviceId: string): number {
  return implBluetoothAdapter().getRemoteDeviceClass(deviceId);
}

function PairDevice(deviceId: string, pairCb: (isSuccess: boolean) => void): void {
  return implBluetoothAdapter().pairDevice(deviceId, pairCb);
}

function GetPairedDevices(): Array<string> {
  return implBluetoothAdapter().getPairedDevices();
}

function SetDevicePinCode(deviceId: string, pinCode: string, setPinCodeCb: (isSuccess: boolean) => void): boolean {
  return implBluetoothAdapter().setDevicePinCode(deviceId, pinCode, setPinCodeCb);
}

function IsBluetoothDiscovering(): boolean {
  return implBluetoothAdapter().isBluetoothDiscovering();
}

function GetPairedState(deviceId: string): number {
  return implBluetoothAdapter().getPairedState(deviceId);
}

function IsBluetoothSwitched(): boolean {
  return implBluetoothAdapter().isBluetoothSwitched();
}

export class BluetoothAdapterBind {
  static bind() {
    JsBindingUtils.bindFunction('BluetoothAdapter.GetAdapterName', GetAdapterName);
    JsBindingUtils.bindFunction('BluetoothAdapter.SetAdapterName', SetAdapterName);
    JsBindingUtils.bindFunction('BluetoothAdapter.GetBluetoothState', GetBluetoothState);
    JsBindingUtils.bindFunction('BluetoothAdapter.EnableBluetooth', EnableBluetooth);
    JsBindingUtils.bindFunction('BluetoothAdapter.DisableBluetooth', DisableBluetooth);
    JsBindingUtils.bindFunction('BluetoothAdapter.StartBluetoothStateMonitor', StartBluetoothStateMonitor);
    JsBindingUtils.bindFunction('BluetoothAdapter.StopBluetoothStateMonitor', StopBluetoothStateMonitor);
    JsBindingUtils.bindFunction('BluetoothAdapter.GetBluetoothScanMode', GetBluetoothScanMode);
    JsBindingUtils.bindFunction('BluetoothAdapter.SetBluetoothScanMode', SetBluetoothScanMode);
    JsBindingUtils.bindFunction('BluetoothAdapter.StartBluetoothDiscovery', StartBluetoothDiscovery);
    JsBindingUtils.bindFunction('BluetoothAdapter.StopBluetoothDiscovery', StopBluetoothDiscovery);
    JsBindingUtils.bindFunction('BluetoothAdapter.StartDiscoveryMonitor', StartDiscoveryMonitor);
    JsBindingUtils.bindFunction('BluetoothAdapter.StopDiscoveryMonitor', StopDiscoveryMonitor);
    JsBindingUtils.bindFunction('BluetoothAdapter.GetRemoteDeviceName', GetRemoteDeviceName);
    JsBindingUtils.bindFunction('BluetoothAdapter.GetPairState', GetPairState);
    JsBindingUtils.bindFunction('BluetoothAdapter.GetRemoteDeviceClass', GetRemoteDeviceClass);
    JsBindingUtils.bindFunction('BluetoothAdapter.PairDevice', PairDevice);
    JsBindingUtils.bindFunction('BluetoothAdapter.GetPairedDevices', GetPairedDevices);
    JsBindingUtils.bindFunction('BluetoothAdapter.SetDevicePinCode', SetDevicePinCode);
    JsBindingUtils.bindFunction('BluetoothAdapter.IsBluetoothDiscovering', IsBluetoothDiscovering);
    JsBindingUtils.bindFunction('BluetoothAdapter.GetPairedState', GetPairedState);
    JsBindingUtils.bindFunction('BluetoothAdapter.IsBluetoothSwitched', IsBluetoothSwitched);
  }
}
