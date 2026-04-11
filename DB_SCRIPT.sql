-- Creacion de la base de datos
CREATE DATABASE IF NOT EXISTS
residencia_DB;
USE residencia_DB;

-- 1. Tabla de Habitaciones 
CREATE TABLE habitacion (
    id_HAB int AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(10) NOT NULL UNIQUE,
    precio DECIMAL(10, 2) NOT NULL,
    estado ENUM('disponible', 'ocupada', 'mantenimiento') DEFAULT 'disponible'    
) ENGINE=InnoDB;

-- 2. Tabla de Residentes
CREATE TABLE Residente (
    id_RES int AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    PHONE VARCHAR(20),
    ID VARCHAR(20)
) ENGINE=InnoDB;

-- 3. Tabla de asignaciones (tabla de relacion de habitaciones y habitantes)
CREATE TABLE Asignacion (
    id_ASIG int AUTO_INCREMENT PRIMARY KEY,
    id_HAB int NOT NULL,
    id_RES int NOT NULL,
    Fecha_inicio DATE NULL,
    Fecha_fin DATE NULL,
    CONSTRAINT fk_hab_asig FOREIGN KEY(id_HAB)
        REFERENCES habitacion(id_HAB) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_res_asig FOREIGN KEY(id_RES)
        REFERENCES Residente(id_RES) ON DELETE RESTRICT ON UPDATE CASCADE    
) ENGINE=InnoDB;

-- 4. Tabla de facturas (Relacionada a la asignacion)
    CREATE TABLE Factura (
    id_FACT int AUTO_INCREMENT PRIMARY KEY,
    id_ASIG int NOT NULL,
    Fecha_Emision DATETIME DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10, 2) NOT NULL,
    Estado_pago ENUM('pendiente', 'pagado', 'anulado') DEFAULT 'pendiente',
    CONSTRAINT fk_asig_FACT FOREIGN KEY(id_ASIG)
        REFERENCES Asignacion(id_ASIG) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;