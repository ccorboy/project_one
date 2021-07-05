-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "framingham2" (
    "index" bigint,   NOT NULL,
    "RANDID" bigint,   NOT NULL,
    "totChol" double,   NOT NULL,
    "age" bigint,   NOT NULL,
    "sysBP" double,   NOT NULL,
    "diaBP" double,   NOT NULL,
    "currentSmoker" bigint,   NOT NULL,
    "cigsPerDay" double,   NOT NULL,
    "BMI" double,   NOT NULL,
    "diabetes" bigint,   NOT NULL,
    "BPMeds" double,   NOT NULL,
    "heartRate" double,   NOT NULL,
    "glucose" double,   NOT NULL,
    "education" double,   NOT NULL,
    "PREVCHD" bigint,   NOT NULL,
    "PREVAP" bigint,   NOT NULL,
    "PREVMI" bigint,   NOT NULL,
    "prevalentStroke" bigint,   NOT NULL,
    "prevalentHyp" bigint,   NOT NULL,
    "TIME" bigint,   NOT NULL,
    "PERIOD" bigint,   NOT NULL,
    "DEATH" bigint,   NOT NULL,
    "ANGINA" bigint,   NOT NULL,
    "HOSPMI" bigint,   NOT NULL,
    "MI_FCHD" bigint,   NOT NULL,
    "ANYCHD" bigint,   NOT NULL,
    "STROKE" bigint,   NOT NULL,
    "CVD" bigint,   NOT NULL,
    "HYPERTEN" bigint,   NOT NULL,
    "TIMESTRK" bigint,   NOT NULL,
    "male" bigint,   NOT NULL,
    "CHD" bigint   NOT NULL,
    CONSTRAINT "pk_framingham2" PRIMARY KEY (
        "RANDID"
     )
);

CREATE TABLE "ml_framingham" (
    "index" bigint,   NOT NULL,
    "male" bigint,   NOT NULL,
    "age" bigint,   NOT NULL,
    "education" double,   NOT NULL,
    "currentSmoker" bigint,   NOT NULL,
    "cigsPerDay" double,   NOT NULL,
    "BPMeds" double,   NOT NULL,
    "prevalentStroke" bigint,   NOT NULL,
    "prevalentHyp" bigint,   NOT NULL,
    "diabetes" bigint,   NOT NULL,
    "totChol" double,   NOT NULL,
    "sysBP" double,   NOT NULL,
    "diaBP" double,   NOT NULL,
    "BMI" double,   NOT NULL,
    "heartRate" double,   NOT NULL,
    "glucose" double,   NOT NULL,
    "CHD" bigint   NOT NULL
);

ALTER TABLE "framingham2" ADD CONSTRAINT "fk_framingham2_index_totChol_age_sysBP_diaBP_currentSmoker_cigsPerDay_BMI_diabetes_BPMeds_heartRate_glucose_education_prevalentStroke_prevalentHyp_male_CHD" FOREIGN KEY("index", "totChol", "age", "sysBP", "diaBP", "currentSmoker", "cigsPerDay", "BMI", "diabetes", "BPMeds", "heartRate", "glucose", "education", "prevalentStroke", "prevalentHyp", "male", "CHD")
REFERENCES "ml_framingham" ("index", "totChol", "age", "sysBP", "diaBP", "currentSmoker", "cigsPerDay", "BMI", "diabetes", "BPMeds", "heartRate", "glucose", "education", "prevalentStroke", "prevalentHyp", "male", "CHD");

