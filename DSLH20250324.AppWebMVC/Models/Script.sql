-- Creación de la base de datos (Creación de la base de datos)
CREATE DATABASE Test20250324DB;
GO

USE Test20250324DB;
GO

-- Tabla: Warehouses (Tabla: Bodegas)
CREATE TABLE Warehouses (
    Id INT PRIMARY KEY IDENTITY(1,1), -- ID de la bodega (ID de la bodega)
    WarehouseName VARCHAR(255) NOT NULL,       -- Nombre de la bodega (Nombre de la bodega)
    Notes TEXT                                 -- Notas adicionales (Notas adicionales)
);
GO

-- Tabla: Brands (Tabla: Marcas)
CREATE TABLE Brands (
    Id INT PRIMARY KEY IDENTITY(1,1), -- ID de la marca (ID de la marca)
    BrandName VARCHAR(255) NOT NULL,       -- Nombre de la marca (Nombre de la marca)
    Country VARCHAR(255)                   -- País de origen de la marca (País de origen de la marca)
);
GO

-- Tabla: Products (Tabla: Productos)
CREATE TABLE Products (
    Id INT PRIMARY KEY IDENTITY(1,1),  -- ID del producto (ID del producto)
    ProductName VARCHAR(255) NOT NULL,      -- Nombre del producto (Nombre del producto)
    Description TEXT,                       -- Descripción del producto (Descripción del producto)
    Price DECIMAL(10, 2) NOT NULL,          -- Precio del producto (Precio del producto)
    PurchasePrice DECIMAL(10, 2) NOT NULL,  -- Precio compra del producto
    WarehouseID INT FOREIGN KEY REFERENCES Warehouses(Id), -- ID de la bodega (ID de la bodega)
    BrandID INT FOREIGN KEY REFERENCES Brands(Id),              -- ID de la marca (ID de la marca)
    Notes TEXT                                 -- Notas adicionales (Notas adicionales)
);
GO

-- Tabla: Users (Tabla: Usuarios)
CREATE TABLE Users (
    Id INT PRIMARY KEY IDENTITY(1,1),     -- ID del usuario (ID del usuario)
    Username VARCHAR(255) NOT NULL,         -- Nombre de usuario (Nombre de usuario)
    Email VARCHAR(255) UNIQUE NOT NULL,     -- Correo electrónico del usuario (Correo electrónico del usuario)
    Password CHAR(32) NOT NULL,     -- Hash de la contraseña del usuario (Hash de la contraseña del usuario)
    Role VARCHAR(50) NOT NULL,               -- Rol del usuario (Rol del usuario)
    Notes TEXT                               -- Notas adicionales (Notas adicionales)
);
GO

ALTER TABLE Users                       --Se le agrega el campo Estatus a la tabla Usuario
ADD Status TINYINT DEFAULT 1



INSERT INTO Warehouses (WarehouseName, Notes) VALUES
('Warehouse Alpha', 'Located near the city center');
INSERT INTO Warehouses (WarehouseName, Notes) VALUES
('Warehouse Beta', 'Known for high storage capacity'),
('Warehouse Gamma', 'Specializes in perishable goods'),
('Warehouse Delta', 'Near the harbor area'),
('Warehouse Epsilon', 'Used for industrial equipment storage'),
('Warehouse Zeta', 'State-of-the-art facilities'),
('Warehouse Eta', 'Large loading docks available'),
('Warehouse Theta', 'Climate-controlled environment'),
('Warehouse Iota', 'Accessible via major transport routes'),
('Warehouse Kappa', 'Designed for fragile items'),
('Warehouse Lambda', 'Used for retail goods'),
('Warehouse Mu', 'Near key manufacturing zones'),
('Warehouse Nu', 'Known for advanced security'),
('Warehouse Xi', 'Specialized in chemical storage'),
('Warehouse Omicron', 'Eco-friendly and energy-efficient'),
('Warehouse Pi', 'Located in suburban areas'),
('Warehouse Rho', 'Dedicated to textiles and fabrics'),
('Warehouse Sigma', 'Offers 24/7 surveillance'),
('Warehouse Tau', 'Strategically located near export hubs'),
('Warehouse Upsilon', 'Flexible leasing packages available'),
('Warehouse Phi', 'Equipped with excellent ventilation'),
('Warehouse Chi', 'Fast dispatch services available'),
('Warehouse Psi', 'Designed for cold storage'),
('Warehouse Omega', 'Located on a major trade route'),
('Warehouse Alpha II', 'Expanded facilities for electronics'),
('Warehouse Beta Prime', 'Focuses on high-value items'),
('Warehouse Gamma Extra', 'Top-notch logistics services'),
('Warehouse Delta North', 'Specialized in heavy machinery'),
('Warehouse Epsilon South', 'Perfect for seasonal inventory'),
('Warehouse Zeta Horizon', 'Modernized for high-tech goods'),
('Warehouse Eta Central', 'Offers cross-docking capabilities'),
('Warehouse Theta Plus', 'Ideal for pharmaceutical products'),
('Warehouse Iota Edge', 'Great for last-mile delivery storage'),
('Warehouse Kappa Hub', 'Specialized in small-package logistics'),
('Warehouse Lambda Core', 'Focuses on e-commerce operations'),
('Warehouse Mu West', 'Located in a key industrial area'),
('Warehouse Nu Peak', 'Known for rapid order fulfillment'),
('Warehouse Xi Prime', 'Customizable for tenant needs'),
('Warehouse Omicron Green', 'Fully solar-powered facility'),
('Warehouse Pi Connect', 'Provides efficient rail connections'),
('Warehouse Rho Compact', 'Great for small businesses'),
('Warehouse Sigma East', 'Provides multi-temperature storage'),
('Warehouse Tau Flex', 'Known for flexible layouts'),
('Warehouse Upsilon Max', 'Ideal for bulk goods storage'),
('Warehouse Phi Bridge', 'Perfect for international exports'),
('Warehouse Chi Square', 'Close to urban centers'),
('Warehouse Psi Vault', 'Focuses on precious metals storage'),
('Warehouse Omega Nexus', 'Newest addition to the network'),
('Warehouse Zenith', 'Great for oversized goods'),
('Warehouse Origin', 'Designed for innovative logistics solutions');

--50 BODEGAS
INSERT INTO Warehouses (WarehouseName, Notes) VALUES
('Central Storage', 'Hub for large-scale distribution'),
('Urban Depot', 'Designed for high-volume urban logistics'),
('Coastal Reserve', 'Perfect for import-export operations'),
('Mountain Base', 'Located in a high-altitude area'),
('FreshGoods Storage', 'Equipped for perishable items'),
('EcoStore', 'Fully powered by renewable energy'),
('Mega Warehouse', 'Ideal for oversized goods storage'),
('QuickDispatch Center', 'Streamlined for rapid deliveries'),
('Tech Depot', 'Specialized for electronics and gadgets'),
('Textile Hub', 'Dedicated to fabric and clothing storage'),
('SafeVault Storage', 'Focused on valuables and secure items'),
('Logistics Pro', 'Advanced logistics services available'),
('AgriStore', 'Perfect for agricultural products'),
('Arctic Storage', 'Optimized for frozen goods'),
('Metro Hub', 'Centrally located in an urban area'),
('Green Depot', 'Built with eco-friendly materials'),
('RapidFlow Warehouse', 'Streamlined loading and unloading'),
('Oceanic Hub', 'Situated near a port'),
('Steel Reserve', 'Storage for heavy metals and machinery'),
('Fashion Warehouse', 'Designed for retail stock'),
('ProTransit', 'Excellent for cross-docking operations'),
('Secure Hold', 'Offers high-security storage'),
('FreshFlow Depot', 'Best for temperature-sensitive goods'),
('Prime Reserve', 'Perfect for e-commerce operations'),
('Dynamic Storage', 'Flexible layout for varied needs'),
('Aero Logistics', 'Near major airports'),
('Cargo Plus', 'High-capacity for bulk storage'),
('Metro Storage', 'Close to metropolitan areas'),
('VaultX', 'Focused on precious goods'),
('HarborPoint', 'Perfect for shipping and receiving'),
('EcoFlow Storage', 'Optimized for energy efficiency'),
('FastTrack Center', 'Excellent for same-day delivery'),
('Urban Core', 'Centralized location for quick dispatch'),
('PermaCool Storage', 'Perfect for pharmaceuticals'),
('TradePoint Depot', 'Located in a key trade zone'),
('Titan Storage', 'Built for industrial-scale operations'),
('BlueHorizon', 'Coastal location with great access'),
('IronClad Reserve', 'Used for heavy equipment storage'),
('FreshNest', 'Specialized for fresh produce'),
('CityLink Warehouse', 'Ideal for urban fulfillment'),
('GlobalPoint', 'Great for international logistics'),
('NextGen Storage', 'Equipped with smart technologies'),
('AlphaDepot', 'All-purpose storage facility'),
('SmartHub', 'Technology-assisted operations'),
('FarmFlex', 'Perfect for agricultural equipment'),
('DockSide Storage', 'Close to major shipping docks'),
('EcoSpace', 'Sustainable and energy-efficient'),
('Solid Base', 'Reliable for long-term storage'),
('CargoWorks', 'High-capacity and versatile'),
('LogiCore', 'Centralized logistics hub');



--50 MARCAS
INSERT INTO Brands (BrandName, Country) VALUES
('TechNova', 'United States'),
('EcoWear', 'Canada'),
('FashionFusion', 'France'),
('GastroPro', 'Italy'),
('AutoMax', 'Germany'),
('SolarBright', 'Spain'),
('GameZone', 'Japan'),
('HealthLine', 'Australia'),
('SkyWare', 'United Kingdom'),
('PureNest', 'New Zealand'),
('GreenLife', 'Sweden'),
('Foodies', 'Mexico'),
('RoboTech', 'South Korea'),
('BioWell', 'Switzerland'),
('FreshBites', 'Brazil'),
('TravelEase', 'Netherlands'),
('PowerCore', 'China'),
('AquaPure', 'Norway'),
('StyleHub', 'India'),
('SmartHome', 'Singapore'),
('ActiveEdge', 'South Africa'),
('UrbanVibe', 'Argentina'),
('ComfortLux', 'Denmark'),
('EliteAudio', 'Austria'),
('Visionary', 'Israel'),
('AutoSphere', 'Czech Republic'),
('RunFast', 'Kenya'),
('EcoTools', 'Finland'),
('GoldenTaste', 'Belgium'),
('BrightVision', 'Portugal'),
('NextGen', 'Malaysia'),
('SafeGuard', 'Poland'),
('VitalityPro', 'Turkey'),
('UrbanRide', 'Thailand'),
('Eterna', 'Chile'),
('MotoCraft', 'Russia'),
('ZenSpace', 'Vietnam'),
('PrimeWear', 'Ireland'),
('EcoClean', 'Philippines'),
('DigitalWave', 'Greece'),
('RapidFoods', 'Colombia'),
('SkyHigh', 'Hungary'),
('CorePower', 'Indonesia'),
('TrueFit', 'Egypt'),
('PureTech', 'Peru'),
('TurboDrive', 'Pakistan'),
('EcoGlow', 'Romania'),
('SmartGear', 'Saudi Arabia'),
('FreshDelight', 'Nigeria'),
('GlobalTech', 'Hong Kong');

--50 MARCAS
INSERT INTO Brands (BrandName, Country) VALUES
('GlobeActive', 'United States'),
('FreshHarvest', 'Canada'),
('StylePoint', 'Italy'),
('AutoTech', 'Germany'),
('NextTrend', 'France'),
('SolarWise', 'Spain'),
('CyberNest', 'Japan'),
('WellnessPro', 'Australia'),
('BrightHome', 'United Kingdom'),
('PureEssence', 'New Zealand'),
('EcoVision', 'Norway'),
('FlavorWave', 'Brazil'),
('SpeedyTech', 'South Korea'),
('LifeWell', 'Switzerland'),
('AgriPlus', 'Mexico'),
('MetroStyle', 'Netherlands'),
('EnergyCore', 'China'),
('ClearWaters', 'Sweden'),
('UrbanEdge', 'Argentina'),
('ActiveFlow', 'India'),
('HealthPro', 'Singapore'),
('DynamicCore', 'South Africa'),
('SilverLine', 'Portugal'),
('EliteCraft', 'Austria'),
('VisionCraft', 'Denmark'),
('AutoEdge', 'Finland'),
('PowerMax', 'Turkey'),
('BioPure', 'Belgium'),
('QuickServe', 'Colombia'),
('TrueTaste', 'Chile'),
('SmartFit', 'Malaysia'),
('RapidCraft', 'Poland'),
('ComfortStyle', 'Ireland'),
('EcoLine', 'Thailand'),
('GoldenLux', 'Russia'),
('UrbanWorks', 'Hungary'),
('VitalCore', 'Czech Republic'),
('MotoX', 'Philippines'),
('FutureTech', 'Greece'),
('AquaLife', 'Indonesia'),
('GreenPath', 'Vietnam'),
('FastTrack Foods', 'Egypt'),
('ProGear', 'Pakistan'),
('ModernNest', 'Nigeria'),
('EcoSphere', 'Saudi Arabia'),
('TrueTone', 'Hong Kong'),
('GlobalNest', 'Peru'),
('QuickFoodies', 'Kenya'),
('EdgeWave', 'Israel'),
('AutoSphere Pro', 'Romania');







-- Insertar 50 registros ficticios en Products usando Warehouses y Brands proporcionados
INSERT INTO Products (ProductName, Description, Price, PurchasePrice, WarehouseID, BrandID, Notes)
VALUES
('TechNova Gadget', 'Innovative technology device', 99.99, 80.00, 1, 1, 'Ideal for tech enthusiasts'),
('EcoWear Jacket', 'Eco-friendly fabric, stylish design', 49.99, 35.00, 2, 2, 'Perfect for outdoor adventures'),
('FashionFusion Dress', 'Elegant evening wear', 150.00, 100.00, 3, 3, 'Best choice for formal events'),
('GastroPro Oven', 'High-performance kitchen appliance', 299.99, 250.00, 4, 4, 'Designed for professional cooking'),
('AutoMax Tool Kit', 'Comprehensive automotive tools', 79.99, 60.00, 5, 5, 'Essential for car repair'),
('SolarBright Lamp', 'Energy-efficient solar lamp', 39.99, 25.00, 6, 6, 'Great for camping trips'),
('GameZone Console', 'Latest generation gaming console', 499.99, 400.00, 7, 7, 'Unparalleled gaming experience'),
('HealthLine Vitamins', 'Multivitamin supplements', 29.99, 20.00, 8, 8, 'Boost your daily health'),
('SkyWare Router', 'High-speed internet router', 79.99, 65.00, 9, 9, 'Designed for optimal connectivity'),
('PureNest Pillow', 'Premium comfort sleeping pillow', 25.99, 15.00, 10, 10, 'Best for a restful sleep'),
('GlobalTech Accessory', 'High-quality tech accessory', 49.99, 30.00, 50, 50, 'Perfect for tech upgrades');

INSERT INTO Products (ProductName, Description, Price, PurchasePrice, WarehouseID, BrandID, Notes)
VALUES
('PrimeWear Sneakers', 'Comfortable and durable sneakers', 59.99, 40.00, 11, 11, 'Great for active lifestyles'),
('EcoClean Detergent', 'Eco-friendly cleaning solution', 19.99, 15.00, 12, 12, 'Safe for the environment'),
('MotoCraft Oil', 'High-performance motor oil', 24.99, 18.00, 13, 13, 'Optimized for engine durability'),
('TrueFit Jeans', 'Stylish and comfortable denim', 49.99, 35.00, 14, 14, 'Perfect fit for all sizes'),
('NextGen Tablet', 'Innovative touchscreen tablet', 299.99, 250.00, 15, 15, 'Packed with advanced features'),
('GlobalPoint GPS', 'High-precision GPS device', 79.99, 60.00, 16, 16, 'Ideal for outdoor adventures'),
('FreshDelight Yogurt', 'Creamy and delicious yogurt', 4.99, 3.50, 17, 17, 'Packed with probiotics'),
('ActiveEdge Backpack', 'Lightweight and durable backpack', 39.99, 30.00, 18, 18, 'Perfect for hiking and travel'),
('BrightVision Lamp', 'LED lamp for study and work', 25.99, 20.00, 19, 19, 'Energy-efficient and bright'),
('GreenLife Plant', 'Decorative indoor plant', 15.99, 10.00, 20, 20, 'Adds life to any room'),
('DigitalWave Mouse', 'Wireless ergonomic mouse', 29.99, 20.00, 21, 21, 'Ideal for daily use'),
('UrbanRide Helmet', 'Protective and stylish helmet', 39.99, 25.00, 22, 22, 'Safety first for urban bikers'),
('Eterna Water Bottle', 'Reusable insulated bottle', 19.99, 12.00, 23, 23, 'Keeps liquids hot or cold'),
('FreshBites Snack', 'Healthy granola bar', 2.99, 1.50, 24, 24, 'Perfect for on-the-go'),
('EliteAudio Headphones', 'High-quality sound headphones', 149.99, 120.00, 25, 25, 'Immersive audio experience'),
('RunFast Shoes', 'Lightweight running shoes', 79.99, 50.00, 26, 26, 'Engineered for speed'),
('GoldenTaste Chocolate', 'Rich and creamy chocolate', 5.99, 3.50, 27, 27, 'Perfect treat for chocolate lovers'),
('FarmFlex Tools', 'Durable agricultural tools', 129.99, 100.00, 28, 28, 'Built to last'),
('AquaPure Filter', 'Water purification system', 59.99, 40.00, 29, 29, 'Safe and clean water'),
('ProTransit Luggage', 'Hard-shell travel luggage', 129.99, 100.00, 30, 30, 'Perfect for frequent travelers'),
('TurboDrive Flash', 'High-speed USB flash drive', 19.99, 10.00, 31, 31, 'Stores your data securely'),
('SkyHigh Drone', 'Advanced GPS-enabled drone', 499.99, 450.00, 32, 32, 'Great for photography and videography'),
('HealthLine Mask', 'Comfortable protective face mask', 9.99, 5.00, 33, 33, 'Essential for daily use'),
('SafeGuard Lock', 'High-security padlock', 19.99, 12.00, 34, 34, 'Keeps your belongings secure'),
('Visionary Glasses', 'Anti-glare computer glasses', 79.99, 50.00, 35, 35, 'Reduces eye strain');