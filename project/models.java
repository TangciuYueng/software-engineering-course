public class Employee {
    private int employeeId;
    private String name;
    private String password;
    private String phoneNumber;
    private String apiKey;
    private int type;
}

public class Product {
    private int productId;
    private String name;
    private String detail;
    private String quality;
    private double stock;
    private double price;
    private String photo;
    private String type;
}

public class Farm {
    private int farmId;
    private String name;
    private String location;
}

public class Weather {
    private int farmId;
    private LocalDateTime recordDate;
    private int highTemp;
    private int lowTemp;
    private double precipitation;
    private int humidity;
    private int wind;
    private String weather;
}


public class Field {
    private int fieldId;
    private String status;
    private String name;
    private int farmId;
    private String soilType;
    private double phLevel;
    private double vertex1Latitude;
    private double vertex1Longitude;
    private double vertex2Latitude;
    private double vertex2Longitude;
    private double vertex3Latitude;
    private double vertex3Longitude;
    private double vertex4Latitude;
    private double vertex4Longitude;
    private String photo;
}

public class Crop {
    private int cropId;
    private String name;
    private String cropType;
    private String soilType;
    private int highPh;
    private int lowPh;
}

public class Planting {
    private int plantingId;
    private int fieldId;
    private int cropId;
    private LocalDateTime startDate;
    private LocalDateTime endDate;
    private int employeeId;
}

public class Equipment {
    private int equipmentId;
    private String name;
    private String type;
    private int farmId;
    private LocalDateTime startDate;
    private LocalDateTime endDate;
}

public class Consumables {
    private int consumablesId;
    private String name;
    private String type;
    private int stock;
    private String unit;
    private int farmId;
}

public class ConsumablesHistory {
    private int consumablesId;
    private LocalDateTime changeDate;
    private int employeeId;
    private int weight;
    private String detail;
}

public class Maintenance {
    private int maintenanceId;
    private int employeeId;
    private int equipmentId;
    private LocalDateTime startDate;
    private LocalDateTime endDate;
    private String detail;
    private double cost;
}

public class Issue {
    private int issueId;
    private String type;
    private LocalDateTime startDate;
    private LocalDateTime addressDate;
    private LocalDateTime endDate;
    private int plantingId;
    private String detail;
    private int employeeId;
}

public class Activity {
    private int activityId;
    private int issueId;
    private int equipmentId;
    private int consumablesId;
    private String detail;
    private int amount;
    private int employeeId;
}

public class Warehouse {
    private int warehouseId;
    private String name;
    private int farmId;
}

public class Wares {
    private int waresId;
    private int warehouseId;
    private String quality;
    private int cropId;
    private double weight;
    private LocalDateTime earliestDate;
    private double stock;
}

public class Shelf {
    private int shelfId;
    private LocalDateTime shelfDate;
    private int employeeId;
    private int amount;
    private int waresId;
    private int productId;
}

public class Harvest {
    private int harvestId;
    private LocalDateTime harvestDate;
    private int employeeId;
    private int plantingId;
}

public class HarvestInfo {
    private int harvestInfoId;
    private String quality;
    private int weight;
    private int harvestId;
}

public class IssueRoutine {
    private int routineId;
    private String type;
    private LocalDateTime startDate;
    private LocalDateTime endDate;
    private int plantingId;
    private String detail;
    private int employeeId;
}
