unsigned long lastMsg = 0;
float F=1;
double Fs = 10*F;
double Ts_ms = (1/Fs)*1000;

void setup() {
  pinMode(A0,INPUT);
  Serial.begin(9600);
  while(!Serial);

}

void loop() {
  unsigned long now = millis();
  if (now - lastMsg > Ts_ms){
    lastMsg = now;
    
    double s1 = analogRead(A0);
    
    Serial.print("Signal:");
    Serial.print(r1);
     
  }

}
