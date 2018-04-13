Apiotics.configure do |config|
  config.parents = {"MedicalDevice"=>{"Buzzer"=>{}, "FourDigitDisplay"=>{}, "GalvanicSkinResponseSensor"=>{}, "HeartRateSensor"=>{}}, "SecurityDevice"=>{"SoundSensor"=>{}, "VibrationSensor"=>{}, "MotionSensor"=>{}}, "StarterKit"=>{"Buzzer"=>{}, "FourDigitDisplay"=>{}, "Potentiometer"=>{}, "UltrasonicRangeSensor"=>{}, "LightSensor"=>{}}, "MaintenanceDevice"=>{"ElectricitySensor"=>{}, "MagneticFieldSensor"=>{}, "VibrationSensor"=>{}}}
end