package Goose;

// This class allows you to handle specific events on the settings class:
// The SettingChanging event is raised before a setting's value is changed.
// The PropertyChanged event is raised after a setting's value is changed.
// The SettingsLoaded event is raised after the setting values are loaded.
// The SettingsSaving event is raised before the setting values are saved.
// ------------------------------------------------------------------------------
// <auto-generated>
// This code was generated by a tool.
// Runtime Version:4.0.30319.17929
//
// Changes to this file may cause incorrect behavior and will be lost if
// the code is regenerated.
// </auto-generated>
// ------------------------------------------------------------------------------

public final class GameSettings {

    private boolean autoCharacterCreation;
    private short gameServerPort;
    private int maxPlayers;
    private String gameServerIP;
    private String databaseUsername;
    private String databasePassword;
    private String databaseName;
    private String serverName;
    private int startingMapID;
    private int startingMapX;
    private int startingMapY;
    private double baseHaste;
    private double baseSpellDamage;
    private double baseSpellCrit;
    private double baseMeleeDamage;
    private double baseMeleeCrit;
    private double baseDamageReduction;
    private double baseHPPercentRegen;
    private int baseHPStaticRegen;
    private double baseMPPercentRegen;
    private int baseMPStaticRegen;
    private int startingHP;
    private int startingMP;
    private int startingSP;
    private int startingStrength;
    private int startingStamina;
    private int startingDexterity;
    private int startingIntelligence;
    private int startingAC;
    private int startingFireResist;
    private int startingWaterResist;
    private int startingAirResist;
    private int startingSpiritResist;
    private int startingEarthResist;
    private long startingGold;
    private long startingExperience;
    private long startingExperienceSold;
    private int startingLevel;
    private int startingClassID;
    private int startingGuildID;
    private int startingBodyID;
    private int startingFaceID;
    private int startingHairID;
    private int startingHairR;
    private int startingHairG;
    private int startingHairB;
    private int startingHairA;
    private String motd;
    private String startingTitle;
    private String startingSurname;
    private double regenSpeed;
    private String serverVersion;
    private int inventorySize;
    private String startingItems;
    private int equippedSize;
    private int goldItemID;
    private int staminaToHP;
    private int intelligenceToMP;
    private double damageModifier;
    private double experienceModifier;
    private long itemSavePeriod;
    private long playerSavePeriod;
    private long itemProtectedTime;
    private double spellEffectPeriod;
    private int spellbookSize;
    private int buffBarVisibleSize;
    private int partyWindowMax;
    private int vendorSlotSize;
    private int itemIDStartpoint;
    private int vitaBuyAmount;
    private int manaBuyAmount;
    private long increaseVitaBuyAmount;
    private long increaseManaBuyAmount;
    private long experienceCap;
    private int combineBagSize;
    private boolean lockdownModeEnabled;
    private int logoutLagTime;
    private long guildCreationCost;
    private String defaultGuildMOTD;
    private long guildSavePeriod;
    private int numberOfRanks;
    private long rankUpdatePeriod;
    private double maxAC;
    private long experienceModifierLimit;
    private double dropRateModifier;
    private boolean speedhackDetectionEnabled;
    private long itemGroundExistTime;
    private long itemGroundSweepTime;
    private double defaultAetherThreshold;
    private long defaultToggleSettings;
    private long newCharactersPerDayPerIP;
    private int maxNPCs;
    private int petVitaBuyAmount;
    private long increasePetVitaBuyCost;
    private long petVitaCost;
    private int petDamageBuyAmount;
    private long increasePetDamageBuyCost;
    private long petDamageCost;
    private int petCountLimit;
    private String databaseAddress;
    private long experienceGainAtMaxLevel;
    private String jdbcConnectString;

    private GameSettings() {
        autoCharacterCreation = true;
        gameServerPort = 6500;
        maxPlayers = 200;
        gameServerIP = "192.168.1.119";
        databaseUsername = "goose";
        databasePassword = "pass";
        databaseAddress = "localhost:5432";
        jdbcConnectString = "jdbc:postgresql://";
//        jdbcConnectString = "jdbc:mysql://";
        databaseName = "goose";
        serverName = "Goose";
        startingMapID = 1;
        startingMapX = 50;
        startingMapY = 50;
        baseHaste = 0;
        baseSpellDamage = 0;
        baseSpellCrit = 0;
        baseMeleeDamage = 0.50;
        baseMeleeCrit = 0.50;
        baseDamageReduction = 0;
        baseHPPercentRegen = 0.02;
        baseHPStaticRegen = 10;
        baseMPPercentRegen = 0.02;
        baseMPStaticRegen = 10;
        startingHP = 30;
        startingMP = 30;
        startingSP = 0;
        startingStrength = 0;
        startingStamina = 0;
        startingDexterity = 0;
        startingIntelligence = 0;
        startingAC = 0;
        startingFireResist = 0;
        startingWaterResist = 0;
        startingAirResist = 0;
        startingSpiritResist = 0;
        startingEarthResist = 0;
        startingGold = 10000;
        startingExperience = 0;
        startingExperienceSold = 0;
        // startingLevel = 50;
        startingLevel = 1;
        startingClassID = 1;
        startingGuildID = 0;
        startingBodyID = 1;
        startingFaceID = 70;
        startingHairID = 23;
        startingHairR = 255;
        startingHairG = 0;
        startingHairB = 0;
        startingHairA = 0;
        motd = "Select class by typing /changeclass rogue/warrior/magus/priest\nNeed help or want to donate? Email support@email.net";
        startingTitle = "";
        startingSurname = "";
        regenSpeed = 1;
        serverVersion = "0.0.6j";
        inventorySize = 30;
        startingItems = "2 3 4 4 4 4 4 5 5 5 5 5";
        equippedSize = 13;
        goldItemID = 1;
        staminaToHP = 25;
        intelligenceToMP = 25;
        damageModifier = 1;
        experienceModifier = 2;
        experienceGainAtMaxLevel = 5000000;
        itemSavePeriod = 300;
        playerSavePeriod = 120;
        itemProtectedTime = 60;
        spellEffectPeriod = 2;
        spellbookSize = 30;
        buffBarVisibleSize = 16;
        partyWindowMax = 10;
        vendorSlotSize = 30;
        itemIDStartpoint = 5000;
        vitaBuyAmount = 100;
        manaBuyAmount = 100;
        increaseVitaBuyAmount = 100000;
        increaseManaBuyAmount = 100000;
        experienceCap = 0;
        combineBagSize = 10;
        lockdownModeEnabled = false;
        logoutLagTime = 5;
        guildCreationCost = 700000;
        defaultGuildMOTD =
                "Welcome. To change this message type /guildmotd <message>, to give ownership to someone else type /guildowner <name>. To give/remove officer status type /guildofficer <name>";
        guildSavePeriod = 300;
        numberOfRanks = 10;
        rankUpdatePeriod = 300;
        maxAC = 3000;
        experienceModifierLimit = 1000000000;
        dropRateModifier = 2;
        speedhackDetectionEnabled = false;
        itemGroundExistTime = 10800;
        itemGroundSweepTime = 5400;
        defaultAetherThreshold = 0;
        defaultToggleSettings = 0;
        newCharactersPerDayPerIP = 3;
        maxNPCs = 6000;
        petVitaBuyAmount = 100;
        increasePetVitaBuyCost = 100000;
        petVitaCost = 100000;
        petDamageBuyAmount = 50;
        increasePetDamageBuyCost = 40000;
        petDamageCost = 100000;
        petCountLimit = 5;
    }

    private static GameSettings defaultInstance = new GameSettings();

    public static GameSettings getDefault() {
        return defaultInstance;
    }

    public boolean getAutoCharacterCreation() throws Exception {
        return autoCharacterCreation;
    }

    public void setAutoCharacterCreation(boolean value) throws Exception {
        autoCharacterCreation = value;
    }

    public short getGameServerPort() throws Exception {
        return gameServerPort;
    }

    public void setGameServerPort(short value) throws Exception {
        gameServerPort = value;
    }

    public int getMaxPlayers() {
        return maxPlayers;
    }

    public void setMaxPlayers(int value) throws Exception {
        maxPlayers = value;
    }

    public String getGameServerIP() throws Exception {
        return gameServerIP;
    }

    public void setGameServerIP(String value) throws Exception {
        gameServerIP = value;
    }

    public String getDatabaseUsername() throws Exception {
        return databaseUsername;
    }

    public void setDatabaseUsername(String value) throws Exception {
        databaseUsername = value;
    }

    public String getDatabasePassword() throws Exception {
        return databasePassword;
    }

    public void setDatabasePassword(String value) throws Exception {
        databasePassword = value;
    }

    public String getDatabaseName() throws Exception {
        return databaseName;
    }

    public void setDatabaseName(String value) throws Exception {
        databaseName = value;
    }

    public String getServerName() throws Exception {
        return serverName;
    }

    public void setServerName(String value) throws Exception {
        serverName = value;
    }

    public int getStartingMapID() throws Exception {
        return startingMapID;
    }

    public void setStartingMapID(int value) throws Exception {
        startingMapID = value;
    }

    public int getStartingMapX() throws Exception {
        return startingMapX;
    }

    public void setStartingMapX(int value) throws Exception {
        startingMapX = value;
    }

    public int getStartingMapY() throws Exception {
        return startingMapY;
    }

    public void setStartingMapY(int value) throws Exception {
        startingMapY = value;
    }

    public double getBaseHaste() throws Exception {
        return baseHaste;
    }

    public void setBaseHaste(double value) throws Exception {
        baseHaste = value;
    }

    public double getBaseSpellDamage() throws Exception {
        return baseSpellDamage;
    }

    public void setBaseSpellDamage(double value) throws Exception {
        baseSpellDamage = value;
    }

    public double getBaseSpellCrit() throws Exception {
        return baseSpellCrit;
    }

    public void setBaseSpellCrit(double value) throws Exception {
        baseSpellCrit = value;
    }

    public double getBaseMeleeDamage() throws Exception {
        return baseMeleeDamage;
    }

    public void setBaseMeleeDamage(double value) throws Exception {
        baseMeleeDamage = value;
    }

    public double getBaseMeleeCrit() throws Exception {
        return baseMeleeCrit;
    }

    public void setBaseMeleeCrit(double value) throws Exception {
        baseMeleeCrit = value;
    }

    public double getBaseDamageReduction() throws Exception {
        return baseDamageReduction;
    }

    public void setBaseDamageReduction(double value) throws Exception {
        baseDamageReduction = value;
    }

    public double getBaseHPPercentRegen() throws Exception {
        return baseHPPercentRegen;
    }

    public void setBaseHPPercentRegen(double value) throws Exception {
        baseHPPercentRegen = value;
    }

    public int getBaseHPStaticRegen() throws Exception {
        return baseHPStaticRegen;
    }

    public void setBaseHPStaticRegen(int value) throws Exception {
        baseHPStaticRegen = value;
    }

    public double getBaseMPPercentRegen() throws Exception {
        return baseMPPercentRegen;
    }

    public void setBaseMPPercentRegen(double value) throws Exception {
        baseMPPercentRegen = value;
    }

    public int getBaseMPStaticRegen() throws Exception {
        return baseMPStaticRegen;
    }

    public void setBaseMPStaticRegen(int value) throws Exception {
        baseMPStaticRegen = value;
    }

    public int getStartingHP() throws Exception {
        return startingHP;
    }

    public void setStartingHP(int value) throws Exception {
        startingHP = value;
    }

    public int getStartingMP() throws Exception {
        return startingMP;
    }

    public void setStartingMP(int value) throws Exception {
        startingMP = value;
    }

    public int getStartingSP() throws Exception {
        return startingSP;
    }

    public void setStartingSP(int value) throws Exception {
        startingSP = value;
    }

    public int getStartingStrength() throws Exception {
        return startingStrength;
    }

    public void setStartingStrength(int value) throws Exception {
        startingStrength = value;
    }

    public int getStartingStamina() throws Exception {
        return startingStamina;
    }

    public void setStartingStamina(int value) throws Exception {
        startingStamina = value;
    }

    public int getStartingDexterity() throws Exception {
        return startingDexterity;
    }

    public void setStartingDexterity(int value) throws Exception {
        startingDexterity = value;
    }

    public int getStartingIntelligence() throws Exception {
        return startingIntelligence;
    }

    public void setStartingIntelligence(int value) throws Exception {
        startingIntelligence = value;
    }

    public int getStartingAC() throws Exception {
        return startingAC;
    }

    public void setStartingAC(int value) throws Exception {
        startingAC = value;
    }

    public int getStartingFireResist() throws Exception {
        return startingFireResist;
    }

    public void setStartingFireResist(int value) throws Exception {
        startingFireResist = value;
    }

    public int getStartingWaterResist() throws Exception {
        return startingWaterResist;
    }

    public void setStartingWaterResist(int value) throws Exception {
        startingWaterResist = value;
    }

    public int getStartingAirResist() throws Exception {
        return startingAirResist;
    }

    public void setStartingAirResist(int value) throws Exception {
        startingAirResist = value;
    }

    public int getStartingSpiritResist() throws Exception {
        return startingSpiritResist;
    }

    public void setStartingSpiritResist(int value) throws Exception {
        startingSpiritResist = value;
    }

    public int getStartingEarthResist() throws Exception {
        return startingEarthResist;
    }

    public void setStartingEarthResist(int value) throws Exception {
        startingEarthResist = value;
    }

    public long getStartingGold() throws Exception {
        return startingGold;
    }

    public void setStartingGold(long value) throws Exception {
        startingGold = value;
    }

    public long getStartingExperience() throws Exception {
        return startingExperience;
    }

    public void setStartingExperience(long value) throws Exception {
        startingExperience = value;
    }

    public long getStartingExperienceSold() throws Exception {
        return startingExperienceSold;
    }

    public void setStartingExperienceSold(long value) throws Exception {
        startingExperienceSold = value;
    }

    public int getStartingLevel() throws Exception {
        return startingLevel;
    }

    public void setStartingLevel(int value) throws Exception {
        startingLevel = value;
    }

    public int getStartingClassID() throws Exception {
        return startingClassID;
    }

    public void setStartingClassID(int value) throws Exception {
        startingClassID = value;
    }

    public int getStartingGuildID() throws Exception {
        return startingGuildID;
    }

    public void setStartingGuildID(int value) throws Exception {
        startingGuildID = value;
    }

    public int getStartingBodyID() throws Exception {
        return startingBodyID;
    }

    public void setStartingBodyID(int value) throws Exception {
        startingBodyID = value;
    }

    public int getStartingFaceID() throws Exception {
        return startingFaceID;
    }

    public void setStartingFaceID(int value) throws Exception {
        startingFaceID = value;
    }

    public int getStartingHairID() throws Exception {
        return startingHairID;
    }

    public void setStartingHairID(int value) throws Exception {
        startingHairID = value;
    }

    public int getStartingHairR() throws Exception {
        return startingHairR;
    }

    public void setStartingHairR(int value) throws Exception {
        startingHairR = value;
    }

    public int getStartingHairG() throws Exception {
        return startingHairG;
    }

    public void setStartingHairG(int value) throws Exception {
        startingHairG = value;
    }

    public int getStartingHairB() throws Exception {
        return startingHairB;
    }

    public void setStartingHairB(int value) throws Exception {
        startingHairB = value;
    }

    public int getStartingHairA() throws Exception {
        return startingHairA;
    }

    public void setStartingHairA(int value) throws Exception {
        startingHairA = value;
    }

    public String getMOTD() throws Exception {
        return motd;
    }

    public void setMOTD(String value) throws Exception {
        motd = value;
    }

    public String getStartingTitle() throws Exception {
        return startingTitle;
    }

    public void setStartingTitle(String value) throws Exception {
        startingTitle = value;
    }

    public String getStartingSurname() throws Exception {
        return startingSurname;
    }

    public void setStartingSurname(String value) throws Exception {
        startingSurname = value;
    }

    public double getRegenSpeed() throws Exception {
        return regenSpeed;
    }

    public void setRegenSpeed(double value) throws Exception {
        regenSpeed = value;
    }

    public String getServerVersion() throws Exception {
        return serverVersion;
    }

    public int getInventorySize() throws Exception {
        return inventorySize;
    }

    public String getStartingItems() throws Exception {
        return startingItems;
    }

    public void setStartingItems(String value) throws Exception {
        startingItems = value;
    }

    public int getEquippedSize() throws Exception {
        return equippedSize;
    }

    public int getGoldItemID() throws Exception {
        return goldItemID;
    }

    public void setGoldItemID(int value) throws Exception {
        goldItemID = value;
    }

    public int getStaminaToHP() throws Exception {
        return staminaToHP;
    }

    public void setStaminaToHP(int value) throws Exception {
        staminaToHP = value;
    }

    public int getIntelligenceToMP() throws Exception {
        return intelligenceToMP;
    }

    public void setIntelligenceToMP(int value) throws Exception {
        intelligenceToMP = value;
    }

    public double getDamageModifier() throws Exception {
        return damageModifier;
    }

    public void setDamageModifier(double value) throws Exception {
        damageModifier = value;
    }

    public double getExperienceModifier() throws Exception {
        return experienceModifier;
    }

    public void setExperienceModifier(double value) throws Exception {
        experienceModifier = value;
    }

    public long getItemSavePeriod() throws Exception {
        return itemSavePeriod;
    }

    public void setItemSavePeriod(long value) throws Exception {
        itemSavePeriod = value;
    }

    public long getPlayerSavePeriod() throws Exception {
        return playerSavePeriod;
    }

    public void setPlayerSavePeriod(long value) throws Exception {
        playerSavePeriod = value;
    }

    public long getItemProtectedTime() throws Exception {
        return itemProtectedTime;
    }

    public void setItemProtectedTime(long value) throws Exception {
        itemProtectedTime = value;
    }

    public double getSpellEffectPeriod() throws Exception {
        return spellEffectPeriod;
    }

    public void setSpellEffectPeriod(double value) throws Exception {
        spellEffectPeriod = value;
    }

    public int getSpellbookSize() throws Exception {
        return spellbookSize;
    }

    public int getBuffBarVisibleSize() throws Exception {
        return buffBarVisibleSize;
    }

    public int getPartyWindowMax() throws Exception {
        return partyWindowMax;
    }

    public int getVendorSlotSize() throws Exception {
        return vendorSlotSize;
    }

    public int getItemIDStartpoint() throws Exception {
        return itemIDStartpoint;
    }

    public int getVitaBuyAmount() throws Exception {
        return vitaBuyAmount;
    }

    public void setVitaBuyAmount(int value) throws Exception {
        vitaBuyAmount = value;
    }

    public int getManaBuyAmount() throws Exception {
        return manaBuyAmount;
    }

    public void setManaBuyAmount(int value) throws Exception {
        manaBuyAmount = value;
    }

    public long getIncreaseVitaBuyAmount() throws Exception {
        return increaseVitaBuyAmount;
    }

    public void setIncreaseVitaBuyAmount(long value) throws Exception {
        increaseVitaBuyAmount = value;
    }

    public long getIncreaseManaBuyAmount() throws Exception {
        return increaseManaBuyAmount;
    }

    public void setIncreaseManaBuyAmount(long value) throws Exception {
        increaseManaBuyAmount = value;
    }

    public long getExperienceCap() throws Exception {
        return experienceCap;
    }

    public void setExperienceCap(long value) throws Exception {
        experienceCap = value;
    }

    public int getCombineBagSize() throws Exception {
        return combineBagSize;
    }

    public boolean getLockdownModeEnabled() throws Exception {
        return lockdownModeEnabled;
    }

    public void setLockdownModeEnabled(boolean value) throws Exception {
        lockdownModeEnabled = value;
    }

    public int getLogoutLagTime() throws Exception {
        return logoutLagTime;
    }

    public void setLogoutLagTime(int value) throws Exception {
        logoutLagTime = value;
    }

    public long getGuildCreationCost() throws Exception {
        return guildCreationCost;
    }

    public void setGuildCreationCost(long value) throws Exception {
        guildCreationCost = value;
    }

    public String getDefaultGuildMOTD() throws Exception {
        return defaultGuildMOTD;
    }

    public void setDefaultGuildMOTD(String value) throws Exception {
        defaultGuildMOTD = value;
    }

    public long getGuildSavePeriod() throws Exception {
        return guildSavePeriod;
    }

    public void setGuildSavePeriod(long value) throws Exception {
        guildSavePeriod = value;
    }

    public int getNumberOfRanks() throws Exception {
        return numberOfRanks;
    }

    public long getRankUpdatePeriod() throws Exception {
        return rankUpdatePeriod;
    }

    public void setRankUpdatePeriod(long value) throws Exception {
        rankUpdatePeriod = value;
    }

    public double getMaxAC() throws Exception {
        return maxAC;
    }

    public void setMaxAC(double value) throws Exception {
        maxAC = value;
    }

    public long getExperienceModifierLimit() throws Exception {
        return experienceModifierLimit;
    }

    public void setExperienceModifierLimit(long value) throws Exception {
        experienceModifierLimit = value;
    }

    public double getDropRateModifier() throws Exception {
        return dropRateModifier;
    }

    public void setDropRateModifier(double value) throws Exception {
        dropRateModifier = value;
    }

    public boolean getSpeedhackDetectionEnabled() throws Exception {
        return speedhackDetectionEnabled;
    }

    public void setSpeedhackDetectionEnabled(boolean value) throws Exception {
        speedhackDetectionEnabled = value;
    }

    public long getItemGroundExistTime() throws Exception {
        return itemGroundExistTime;
    }

    public void setItemGroundExistTime(long value) throws Exception {
        itemGroundExistTime = value;
    }

    public long getItemGroundSweepTime() throws Exception {
        return itemGroundSweepTime;
    }

    public void setItemGroundSweepTime(long value) throws Exception {
        itemGroundSweepTime = value;
    }

    public double getDefaultAetherThreshold() throws Exception {
        return defaultAetherThreshold;
    }

    public void setDefaultAetherThreshold(double value) throws Exception {
        defaultAetherThreshold = value;
    }

    public long getDefaultToggleSettings() throws Exception {
        return defaultToggleSettings;
    }

    public void setDefaultToggleSettings(long value) throws Exception {
        defaultToggleSettings = value;
    }

    public long getNewCharactersPerDayPerIP() throws Exception {
        return newCharactersPerDayPerIP;
    }

    public void setNewCharactersPerDayPerIP(long value) throws Exception {
        newCharactersPerDayPerIP = value;
    }

    public int getMaxNPCs() {
        return maxNPCs;
    }

    public void setMaxNPCs(int value) throws Exception {
        maxNPCs = value;
    }

    public int getPetVitaBuyAmount() throws Exception {
        return petVitaBuyAmount;
    }

    public void setPetVitaBuyAmount(int value) throws Exception {
        petVitaBuyAmount = value;
    }

    public long getIncreasePetVitaBuyCost() throws Exception {
        return increasePetVitaBuyCost;
    }

    public void setIncreasePetVitaBuyCost(long value) throws Exception {
        increasePetVitaBuyCost = value;
    }

    public long getPetVitaCost() throws Exception {
        return petVitaCost;
    }

    public void setPetVitaCost(long value) throws Exception {
        petVitaCost = value;
    }

    public int getPetDamageBuyAmount() throws Exception {
        return petDamageBuyAmount;
    }

    public void setPetDamageBuyAmount(int value) throws Exception {
        petDamageBuyAmount = value;
    }

    public long getIncreasePetDamageBuyCost() throws Exception {
        return increasePetDamageBuyCost;
    }

    public void setIncreasePetDamageBuyCost(long value) throws Exception {
        increasePetDamageBuyCost = value;
    }

    public long getPetDamageCost() throws Exception {
        return petDamageCost;
    }

    public void setPetDamageCost(long value) throws Exception {
        petDamageCost = value;
    }

    public int getPetCountLimit() throws Exception {
        return petCountLimit;
    }

    public void setPetCountLimit(int value) throws Exception {
        petCountLimit = value;
    }

    public String getDatabaseAddress() throws Exception {
        return databaseAddress;
    }

    public void setDatabaseAddress(String value) throws Exception {
        databaseAddress = value;
    }

    public String getJdbcConnectString(){
        return jdbcConnectString;
    }

    public void setJdbcConnectString(String value){
        jdbcConnectString = value;
    }

    public long getExperienceGainAtMaxLevel() {
        return experienceGainAtMaxLevel;
    }

    public void setExperienceGainAtMaxLevel(long experienceGainAtMaxLevel) {
        this.experienceGainAtMaxLevel = experienceGainAtMaxLevel;
    }
}
