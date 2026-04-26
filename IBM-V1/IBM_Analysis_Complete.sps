* ============================================================.
* SPSS ANALYSIS SYNTAX — Complete Analysis (18 Steps).
* ============================================================.
* Research: Influencer Characteristics Affecting Gen Z.
*           Cosmetics Purchase Decision via Online Channels.
* ============================================================.
* How to use:.
*   1. Open IBM_Data_SPSS_Ready.csv in SPSS.
*   2. Run IBM_Setup_Labels.sps first (setup labels).
*   3. Then open this file and press Run > All.
* ============================================================.
* Results will appear in the Output Window.
* Covers Tables T3-T30 of the research.
* ============================================================.

* ===========================================================.
* STEP 5: RELIABILITY ANALYSIS (T3/T4 - Cronbach's Alpha).
* ===========================================================.
* Note: T3 = Pretest, T4 = Actual data.
*       If no separate pretest, use this result for T4.
* ===========================================================.

TITLE "=== T4: Cronbach Alpha - Informative Value (3.1) ===".
RELIABILITY
  /VARIABLES=IV1_1_Accuracy IV1_2_DetailedReview IV1_3_BrandComparison IV1_4_NewProducts IV1_5_FasterDecision
  /SCALE('Informative') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

TITLE "=== T4: Cronbach Alpha - Entertainment Value (3.2) ===".
RELIABILITY
  /VARIABLES=IV2_1_FunContent IV2_2_PresentationStyle IV2_3_MakeupInspiration IV2_4_CreativeInfluencer
  /SCALE('Entertainment') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

TITLE "=== T4: Cronbach Alpha - Expertise (3.3) ===".
RELIABILITY
  /VARIABLES=IV3_1_Knowledge IV3_2_RealisticResults IV3_3_SponsoredDisclosure
  /SCALE('Expertise') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

TITLE "=== T4: Cronbach Alpha - Trustworthiness (3.4) ===".
RELIABILITY
  /VARIABLES=IV4_1_AccurateInfo IV4_2_HonestReview IV4_3_ProductDisclosure IV4_4_ProsAndCons IV4_5_BeautyImage
  /SCALE('Trustworthiness') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

TITLE "=== T4: Cronbach Alpha - Attractiveness (3.5) ===".
RELIABILITY
  /VARIABLES=IV5_1_PersonalityFit IV5_2_ReviewSkill IV5_3_MakeupStyle IV5_4_Approachable IV5_5_CredibleImage
  /SCALE('Attractiveness') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

TITLE "=== T4: Cronbach Alpha - Similarity (3.6) ===".
RELIABILITY
  /VARIABLES=IV6_1_SkinType IV6_2_Lifestyle IV6_3_CosmeticPreference IV6_4_PriceLevel
  /SCALE('Similarity') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

TITLE "=== T4: Cronbach Alpha - Purchase Intention (4.1) ===".
RELIABILITY
  /VARIABLES=DV1_FutureIntent DV2_TopChoice DV3_CredibilityDriven DV4_ReviewDriven DV5_Repurchase
  /SCALE('PurchaseIntent') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

* ===========================================================.
* STEP 8: FREQUENCIES - Demographics (T5-T9).
* ===========================================================.

TITLE "=== T5: Frequency - Gender ===".
FREQUENCIES VARIABLES=Gender
  /ORDER=ANALYSIS.

TITLE "=== T6: Frequency - Age ===".
FREQUENCIES VARIABLES=Age
  /ORDER=ANALYSIS.

TITLE "=== T7: Frequency - Education Level ===".
FREQUENCIES VARIABLES=Education
  /ORDER=ANALYSIS.

TITLE "=== T8: Frequency - Occupation ===".
FREQUENCIES VARIABLES=Occupation
  /ORDER=ANALYSIS.

TITLE "=== T9: Frequency - Monthly Income ===".
FREQUENCIES VARIABLES=Income
  /ORDER=ANALYSIS.

* ===========================================================.
* STEP 9: FREQUENCIES - Behavior (T10-T15).
* ===========================================================.

TITLE "=== T10: Frequency - Purchase Frequency ===".
FREQUENCIES VARIABLES=BuyFrequency
  /ORDER=ANALYSIS.

TITLE "=== T11: Frequency - Decision Time ===".
FREQUENCIES VARIABLES=DecisionTime
  /ORDER=ANALYSIS.

TITLE "=== T12: Frequency - Store Type ===".
FREQUENCIES VARIABLES=StoreType
  /ORDER=ANALYSIS.

TITLE "=== T13: Frequency - Price Range ===".
FREQUENCIES VARIABLES=PriceRange
  /ORDER=ANALYSIS.

TITLE "=== T14: Frequency - Info Source / Platform ===".
FREQUENCIES VARIABLES=InfoSource
  /ORDER=ANALYSIS.

TITLE "=== T15: Frequency - Budget per Purchase ===".
FREQUENCIES VARIABLES=Budget
  /ORDER=ANALYSIS.

* ===========================================================.
* STEP 10: DESCRIPTIVES - Overview 6 Dimensions (T16).
* ===========================================================.

TITLE "=== T16: Mean Overview - 6 Influencer Dimensions ===".
DESCRIPTIVES VARIABLES=Mean_Informative Mean_Entertainment Mean_Expertise
  Mean_Trustworthiness Mean_Attractiveness Mean_Similarity
  /STATISTICS=MEAN STDDEV.

* ===========================================================.
* STEP 11: DESCRIPTIVES - Per-item 6 Dimensions (T17-T22).
* ===========================================================.

TITLE "=== T17: Per-item - Informative Value (3.1) ===".
DESCRIPTIVES VARIABLES=IV1_1_Accuracy IV1_2_DetailedReview IV1_3_BrandComparison
  IV1_4_NewProducts IV1_5_FasterDecision Mean_Informative
  /STATISTICS=MEAN STDDEV.

TITLE "=== T18: Per-item - Entertainment Value (3.2) ===".
DESCRIPTIVES VARIABLES=IV2_1_FunContent IV2_2_PresentationStyle
  IV2_3_MakeupInspiration IV2_4_CreativeInfluencer Mean_Entertainment
  /STATISTICS=MEAN STDDEV.

TITLE "=== T19: Per-item - Expertise (3.3) ===".
DESCRIPTIVES VARIABLES=IV3_1_Knowledge IV3_2_RealisticResults
  IV3_3_SponsoredDisclosure Mean_Expertise
  /STATISTICS=MEAN STDDEV.

TITLE "=== T20: Per-item - Trustworthiness (3.4) ===".
DESCRIPTIVES VARIABLES=IV4_1_AccurateInfo IV4_2_HonestReview IV4_3_ProductDisclosure
  IV4_4_ProsAndCons IV4_5_BeautyImage Mean_Trustworthiness
  /STATISTICS=MEAN STDDEV.

TITLE "=== T21: Per-item - Attractiveness (3.5) ===".
DESCRIPTIVES VARIABLES=IV5_1_PersonalityFit IV5_2_ReviewSkill IV5_3_MakeupStyle
  IV5_4_Approachable IV5_5_CredibleImage Mean_Attractiveness
  /STATISTICS=MEAN STDDEV.

TITLE "=== T22: Per-item - Similarity (3.6) ===".
DESCRIPTIVES VARIABLES=IV6_1_SkinType IV6_2_Lifestyle
  IV6_3_CosmeticPreference IV6_4_PriceLevel Mean_Similarity
  /STATISTICS=MEAN STDDEV.

* ===========================================================.
* STEP 12: DESCRIPTIVES - Purchase Intention (T23).
* ===========================================================.

TITLE "=== T23: Per-item - Purchase Intention (4.1) ===".
DESCRIPTIVES VARIABLES=DV1_FutureIntent DV2_TopChoice DV3_CredibilityDriven
  DV4_ReviewDriven DV5_Repurchase Mean_PurchaseIntent
  /STATISTICS=MEAN STDDEV.

* ===========================================================.
* STEP 13: ONE-WAY ANOVA - Gender (T24).
* ===========================================================.

TITLE "=== T24: ANOVA Gender vs Purchase Intention ===".
ONEWAY Mean_PurchaseIntent BY Gender
  /STATISTICS DESCRIPTIVES
  /MISSING ANALYSIS
  /POSTHOC=LSD ALPHA(0.05).

* ===========================================================.
* STEP 14: ONE-WAY ANOVA - Education + LSD (T25, T26).
* ===========================================================.

TITLE "=== T25-T26: ANOVA Education vs Purchase Intention ===".
ONEWAY Mean_PurchaseIntent BY Education
  /STATISTICS DESCRIPTIVES
  /MISSING ANALYSIS
  /POSTHOC=LSD ALPHA(0.05).

* ===========================================================.
* STEP 15: ONE-WAY ANOVA - Occupation (T27).
* ===========================================================.

TITLE "=== T27: ANOVA Occupation vs Purchase Intention ===".
ONEWAY Mean_PurchaseIntent BY Occupation
  /STATISTICS DESCRIPTIVES
  /MISSING ANALYSIS
  /POSTHOC=LSD ALPHA(0.05).

* ===========================================================.
* STEP 16: ONE-WAY ANOVA - Income (T28).
* ===========================================================.

TITLE "=== T28: ANOVA Income vs Purchase Intention ===".
ONEWAY Mean_PurchaseIntent BY Income
  /STATISTICS DESCRIPTIVES
  /MISSING ANALYSIS
  /POSTHOC=LSD ALPHA(0.05).

* ===========================================================.
* BONUS: ONE-WAY ANOVA - Age (for T31 summary).
* ===========================================================.

TITLE "=== ANOVA Age vs Purchase Intention (for T31 summary) ===".
ONEWAY Mean_PurchaseIntent BY Age
  /STATISTICS DESCRIPTIVES
  /MISSING ANALYSIS
  /POSTHOC=LSD ALPHA(0.05).

* ===========================================================.
* STEP 17: PEARSON CORRELATION (T29).
* ===========================================================.

TITLE "=== T29: Pearson Correlation - 6 Dimensions vs Purchase Intention ===".
CORRELATIONS
  /VARIABLES=Mean_Informative Mean_Entertainment Mean_Expertise
    Mean_Trustworthiness Mean_Attractiveness Mean_Similarity
    Mean_PurchaseIntent
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

* ===========================================================.
* STEP 18: MULTIPLE REGRESSION (T30).
* ===========================================================.

TITLE "=== T30: Multiple Regression - 6 Dimensions predict Purchase Intention ===".
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA COLLIN TOL
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN
  /DEPENDENT Mean_PurchaseIntent
  /METHOD=ENTER Mean_Informative Mean_Entertainment Mean_Expertise
    Mean_Trustworthiness Mean_Attractiveness Mean_Similarity.

* ============================================================.
* ANALYSIS COMPLETE!.
* ============================================================.
* All results are in the Output Window.
* Export to Word/PDF: File > Export > Select format.
* ============================================================.
* Tables to fill manually in Word:.
*   T1  = General info summary table (layout only).
*   T2  = Statistical methods used.
*   T31 = Hypothesis 1 summary (from T24-T28 + Age ANOVA).
*   T32 = Hypothesis 2 summary (from T29-T30).
* ============================================================.
