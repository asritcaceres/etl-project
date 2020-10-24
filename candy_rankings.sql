-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/e92gj6
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

DROP TABLE IF EXISTS "Candy_data" ;
DROP TABLE IF EXISTS "Candy_hierarchy";
DROP TABLE IF EXISTS "Candy_merge" ;

CREATE TABLE "Candy_data" (
    "CandyName" VARCHAR   NOT NULL,
    "chocolate" INTEGER   NOT NULL,
    "fruity" INTEGER   NOT NULL,
    "caramel" INTEGER   NOT NULL,
    "peanutyalmondy" INTEGER   NOT NULL,
    "nougat" INTEGER   NOT NULL,
    "crispedricewafer" INTEGER   NOT NULL,
    "hard" INTEGER   NOT NULL,
    "bar" INTEGER   NOT NULL,
    "pluribus" INTEGER   NOT NULL,
    "sugarpercent" FLOAT   NOT NULL,
    "pricepercent" FLOAT   NOT NULL,
    "winpercent" FLOAT   NOT NULL,
    CONSTRAINT "pk_Candy_data" PRIMARY KEY (
        "CandyName"
     )
);

CREATE TABLE "Candy_hierarchy" (
    "CandyName" VARCHAR   NOT NULL,
    "Total_Joy" INTEGER   NOT NULL,
    "Total_Meh" INTEGER   NOT NULL,
    "Total_Despair" INTEGER   NOT NULL,
    "NoResponse" INTEGER   NOT NULL,
    "TOTAL" INTEGER   NOT NULL,
    "Percent_Joy" FLOAT   NOT NULL,
    "Percent_Meh" FLOAT   NOT NULL,
    "Percent_Despair" FLOAT   NOT NULL,
    CONSTRAINT "pk_Candy_hierarchy" PRIMARY KEY (
        "CandyName"
     )
);

CREATE TABLE "Candy_merge" (
    "CandyName" VARCHAR   NOT NULL,
    "Percent_Joy" FLOAT   NOT NULL,
    "Percent_Meh" FLOAT   NOT NULL,
    "Percent_Despair" FLOAT   NOT NULL,
    "sugarpercent" FLOAT   NOT NULL,
    "pricepercent" FLOAT   NOT NULL,
    "winpercent" FLOAT   NOT NULL,
    CONSTRAINT "pk_Candy_merge" PRIMARY KEY (
        "CandyName"
     )
);




