#include "WProgram.h"
#endif

#include "EMGFilters.h"

#define TIMING_DEBUG 1

#define SensorInputPin A0 // input pin number

EMGFilters myFilter;
int sampleRate = SAMPLE_FREQ_1000HZ;

int humFreq = NOTCH_FREQ_50HZ;

static int Threshold = 0;

unsigned long timeStamp;
unsigned long timeBudget;

void setup() {

    myFilter.init(sampleRate, humFreq, true, true, true);


    Serial.begin(115200);

    timeBudget = 1e6 / sampleRate;

}

void loop() {
    timeStamp = micros();

    int Value = analogRead(SensorInputPin);

    int DataAfterFilter = myFilter.update(Value);

    int envlope = sq(DataAfterFilter);
    envlope = (envlope > Threshold) ? envlope : 0;

    timeStamp = micros() - timeStamp;
    if (TIMING_DEBUG) {
        Serial.print("Squared Data: ");
        Serial.println(envlope);

    }

    delayMicroseconds(500);

}