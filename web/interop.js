// ฟังก์ชันที่ Flutter จะเรียกใช้เพื่อส่งข้อมูลไปยัง React
window.sendLanguageToReact = function(language) {
  console.log(`[interop.js] Sending language to React: ${language}`);
  if (window.receiveLanguageFromFlutter) {
    window.receiveLanguageFromFlutter(language);
  }
};

// ฟังก์ชันที่ React จะเรียกใช้เพื่อส่งข้อมูลไปยัง Flutter
window.sendLanguageToFlutter = function(language) {
  console.log(`[interop.js] Sending language to Flutter: ${language}`);
  if (window.updateSharedState) {
    window.updateSharedState('language', language);
  }
};

// ฟังก์ชันที่ Flutter จะกำหนดเพื่อรับข้อมูลจาก React
window.receiveLanguageFromReact = function(callback) {
  console.log('[interop.js] Flutter set receiveLanguageFromReact callback');
  window.receiveLanguageFromFlutter = callback;
};

// ฟังก์ชันที่ React จะกำหนดเพื่อรับข้อมูลจาก Flutter
window.receiveLanguageFromFlutter = function(callback) {
  console.log('[interop.js] React set receiveLanguageFromFlutter callback');
  window.receiveLanguageFromReact = callback;
};
window.getSharedState = function(key) {
  // Implement logic to retrieve shared state
  console.log(`[interop.js] Getting shared state for key: ${key}`);
  // Return the value for the given key or undefined if not set
  return undefined;
};