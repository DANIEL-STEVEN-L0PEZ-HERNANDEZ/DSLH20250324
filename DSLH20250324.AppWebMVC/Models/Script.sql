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