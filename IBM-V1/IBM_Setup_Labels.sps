* ============================================================.
* SPSS SETUP SYNTAX — Influencer & Cosmetics Purchase Intention.
* ============================================================.
* Research: Influencer Characteristics Affecting Gen Z.
*           Cosmetics Purchase Decision via Online Channels.
* ============================================================.
* How to use:.
*   1. Open IBM_Data_SPSS_Ready.csv in SPSS first.
*      File > Open > Data > Select CSV file.
*   2. Then open this file.
*      File > Open > Syntax > Select this file.
*   3. Press Run > All.
* ============================================================.

* -----------------------------------------------------------.
* SECTION 1: VARIABLE LABELS.
* -----------------------------------------------------------.
VARIABLE LABELS
  Timestamp        "Timestamp"
  A_Bangkok        "A. Live in Bangkok?"
  B_GenZ           "B. Born 1997-2012 (Gen Z)?"
  C_OnlinePurchase "C. Purchased cosmetics online via influencer?"
  Gender           "1. Gender"
  Age              "2. Age Group"
  Education        "3. Education Level"
  Occupation       "4. Occupation"
  Income           "5. Monthly Income (THB)"
  BuyFrequency     "6. Online cosmetics purchase frequency"
  DecisionTime     "7. Purchase decision duration"
  StoreType        "8. Most-used online store type"
  PriceRange       "9. Price range of cosmetics purchased"
  InfoSource       "10. Main channel for reviews/info"
  Budget           "11. Budget per purchase (THB)"
  IV1_1_Accuracy        "3.1.1 Influencer info is accurate and credible"
  IV1_2_DetailedReview  "3.1.2 Reviews provide complete details"
  IV1_3_BrandComparison "3.1.3 Info makes brand comparison easier"
  IV1_4_NewProducts     "3.1.4 Helps learn about new product launches"
  IV1_5_FasterDecision  "3.1.5 Helps decide faster"
  IV2_1_FunContent        "3.2.1 Review content is fun and engaging"
  IV2_2_PresentationStyle "3.2.2 Presentation style increases interest"
  IV2_3_MakeupInspiration "3.2.3 Feel inspired to do makeup"
  IV2_4_CreativeInfluencer "3.2.4 Influencer is creative and worth following"
  IV3_1_Knowledge          "3.3.1 Has cosmetics knowledge and expertise"
  IV3_2_RealisticResults   "3.3.2 Reviews are credible and realistic"
  IV3_3_SponsoredDisclosure "3.3.3 Transparently discloses sponsored content"
  IV4_1_AccurateInfo     "3.4.1 Provides accurate and clear cosmetic info"
  IV4_2_HonestReview     "3.4.2 Reviews honestly"
  IV4_3_ProductDisclosure "3.4.3 Transparently discloses receiving products"
  IV4_4_ProsAndCons      "3.4.4 Presents both pros and cons"
  IV4_5_BeautyImage      "3.4.5 Has credible beauty image"
  IV5_1_PersonalityFit   "3.5.1 Personality suits the product"
  IV5_2_ReviewSkill      "3.5.2 Has interesting review skills"
  IV5_3_MakeupStyle      "3.5.3 Has attractive makeup style"
  IV5_4_Approachable     "3.5.4 Natural and approachable"
  IV5_5_CredibleImage    "3.5.5 Has credible and trustworthy image"
  IV6_1_SkinType         "3.6.1 Similar skin type to yourself"
  IV6_2_Lifestyle        "3.6.2 Similar lifestyle to yourself"
  IV6_3_CosmeticPreference "3.6.3 Similar cosmetic preferences"
  IV6_4_PriceLevel       "3.6.4 Uses products in similar price range"
  DV1_FutureIntent       "4.1.1 Intend to buy cosmetics online in the future"
  DV2_TopChoice          "4.1.2 Influencer-recommended cosmetics are top choices"
  DV3_CredibilityDriven  "4.1.3 Likely to buy based on influencer credibility"
  DV4_ReviewDriven       "4.1.4 Decide to buy based on influencer reviews"
  DV5_Repurchase         "4.1.5 Intend to repurchase if recommended by trusted influencer"
  Comments               "Other Suggestions and Comments".

* -----------------------------------------------------------.
* SECTION 2: VALUE LABELS.
* -----------------------------------------------------------.

VALUE LABELS
  A_Bangkok B_GenZ C_OnlinePurchase
    0 "No"
    1 "Yes".

VALUE LABELS
  Gender
    1 "Male"
    2 "Female"
    3 "Other/LGBTQ+".

VALUE LABELS
  Age
    1 "14-18 years"
    2 "19-24 years"
    3 "25-29 years".

VALUE LABELS
  Education
    1 "Below Bachelors"
    2 "Bachelors Degree"
    3 "Masters Degree".

VALUE LABELS
  Occupation
    1 "Student"
    2 "Government/Private Employee"
    3 "Self-employed / Freelance".

VALUE LABELS
  Income
    1 "Less than 5,000 THB/month"
    2 "5,001-15,000 THB/month"
    3 "More than 15,000 THB/month".

VALUE LABELS
  BuyFrequency
    1 "Less than once a month"
    2 "1-2 times per month"
    3 "3-4 times per month"
    4 "Every week".

VALUE LABELS
  DecisionTime
    1 "Decide immediately"
    2 "Within 3 days"
    3 "Within 5 days"
    4 "Within 1 week".

VALUE LABELS
  StoreType
    1 "Official Store / Direct Platform"
    2 "General Online Store".

VALUE LABELS
  PriceRange
    1 "Affordable"
    2 "Mid-range"
    3 "High".

VALUE LABELS
  InfoSource
    1 "TikTok"
    2 "Instagram"
    3 "Facebook"
    4 "YouTube".

VALUE LABELS
  Budget
    1 "Less than 500 THB"
    2 "501-1,000 THB"
    3 "1,001-2,500 THB"
    4 "More than 2,501 THB".

VALUE LABELS
  IV1_1_Accuracy IV1_2_DetailedReview IV1_3_BrandComparison
  IV1_4_NewProducts IV1_5_FasterDecision
  IV2_1_FunContent IV2_2_PresentationStyle IV2_3_MakeupInspiration IV2_4_CreativeInfluencer
  IV3_1_Knowledge IV3_2_RealisticResults IV3_3_SponsoredDisclosure
  IV4_1_AccurateInfo IV4_2_HonestReview IV4_3_ProductDisclosure IV4_4_ProsAndCons IV4_5_BeautyImage
  IV5_1_PersonalityFit IV5_2_ReviewSkill IV5_3_MakeupStyle IV5_4_Approachable IV5_5_CredibleImage
  IV6_1_SkinType IV6_2_Lifestyle IV6_3_CosmeticPreference IV6_4_PriceLevel
  DV1_FutureIntent DV2_TopChoice DV3_CredibilityDriven DV4_ReviewDriven DV5_Repurchase
    1 "Strongly Disagree"
    2 "Disagree"
    3 "Neutral"
    4 "Agree"
    5 "Strongly Agree".

* -----------------------------------------------------------.
* SECTION 3: MEASUREMENT LEVELS.
* -----------------------------------------------------------.
VARIABLE LEVEL
  A_Bangkok B_GenZ C_OnlinePurchase Gender Occupation StoreType InfoSource (NOMINAL)
  Age Education Income BuyFrequency DecisionTime PriceRange Budget (ORDINAL)
  IV1_1_Accuracy IV1_2_DetailedReview IV1_3_BrandComparison
  IV1_4_NewProducts IV1_5_FasterDecision
  IV2_1_FunContent IV2_2_PresentationStyle IV2_3_MakeupInspiration IV2_4_CreativeInfluencer
  IV3_1_Knowledge IV3_2_RealisticResults IV3_3_SponsoredDisclosure
  IV4_1_AccurateInfo IV4_2_HonestReview IV4_3_ProductDisclosure IV4_4_ProsAndCons IV4_5_BeautyImage
  IV5_1_PersonalityFit IV5_2_ReviewSkill IV5_3_MakeupStyle IV5_4_Approachable IV5_5_CredibleImage
  IV6_1_SkinType IV6_2_Lifestyle IV6_3_CosmeticPreference IV6_4_PriceLevel
  DV1_FutureIntent DV2_TopChoice DV3_CredibilityDriven DV4_ReviewDriven DV5_Repurchase (SCALE).

* -----------------------------------------------------------.
* SECTION 4: COMPUTE MEAN VARIABLES.
* -----------------------------------------------------------.

COMPUTE Mean_Informative = MEAN(IV1_1_Accuracy, IV1_2_DetailedReview, IV1_3_BrandComparison, IV1_4_NewProducts, IV1_5_FasterDecision).
VARIABLE LABELS Mean_Informative "Mean: Informative Value (3.1)".

COMPUTE Mean_Entertainment = MEAN(IV2_1_FunContent, IV2_2_PresentationStyle, IV2_3_MakeupInspiration, IV2_4_CreativeInfluencer).
VARIABLE LABELS Mean_Entertainment "Mean: Entertainment Value (3.2)".

COMPUTE Mean_Expertise = MEAN(IV3_1_Knowledge, IV3_2_RealisticResults, IV3_3_SponsoredDisclosure).
VARIABLE LABELS Mean_Expertise "Mean: Expertise (3.3)".

COMPUTE Mean_Trustworthiness = MEAN(IV4_1_AccurateInfo, IV4_2_HonestReview, IV4_3_ProductDisclosure, IV4_4_ProsAndCons, IV4_5_BeautyImage).
VARIABLE LABELS Mean_Trustworthiness "Mean: Trustworthiness (3.4)".

COMPUTE Mean_Attractiveness = MEAN(IV5_1_PersonalityFit, IV5_2_ReviewSkill, IV5_3_MakeupStyle, IV5_4_Approachable, IV5_5_CredibleImage).
VARIABLE LABELS Mean_Attractiveness "Mean: Attractiveness (3.5)".

COMPUTE Mean_Similarity = MEAN(IV6_1_SkinType, IV6_2_Lifestyle, IV6_3_CosmeticPreference, IV6_4_PriceLevel).
VARIABLE LABELS Mean_Similarity "Mean: Similarity (3.6)".

COMPUTE Mean_PurchaseIntent = MEAN(DV1_FutureIntent, DV2_TopChoice, DV3_CredibilityDriven, DV4_ReviewDriven, DV5_Repurchase).
VARIABLE LABELS Mean_PurchaseIntent "Mean: Purchase Intention (4.1)".

VARIABLE LEVEL Mean_Informative Mean_Entertainment Mean_Expertise
               Mean_Trustworthiness Mean_Attractiveness Mean_Similarity
               Mean_PurchaseIntent (SCALE).

EXECUTE.

* ============================================================.
* SETUP COMPLETE!.
* Next: Open and Run IBM_Analysis_Complete.sps.
* ============================================================.
