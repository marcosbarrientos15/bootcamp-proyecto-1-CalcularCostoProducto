Algoritmo CalcularCostoProducto
    // Leer el precio original del producto
    Escribir("Ingrese el precio original del producto:")
    Leer(precioOriginal)
	
    // Leer el cup�n de descuento
    Escribir("�Tiene un cup�n de descuento? (S�/No)")
    Leer(respuestaCupon)
    
    si respuestaCupon = "S�" entonces
        // Leer el porcentaje de descuento
        Escribir("Ingrese el porcentaje de descuento:")
        Leer(porcentajeDescuento)
        
        // Aplicar el descuento
        descuento = precioOriginal * porcentajeDescuento / 100
        precioConDescuento = precioOriginal - descuento
    sino
        // Si no hay cup�n, el precio con descuento es igual al precio original
        precioConDescuento = precioOriginal
    fin si
	
    // Aplicar impuestos (por ejemplo, IVA)
    iva = precioConDescuento * 0.12
    precioConImpuestos = precioConDescuento + iva
	
    // Aplicar descuento por cantidad
    Escribir("Ingrese la cantidad de productos:")
    Leer(cantidadProductos)
	
    si cantidadProductos > 1 entonces
        descuentoCantidad = precioConImpuestos * 0.05
        precioConDescuentoCantidad = precioConImpuestos - descuentoCantidad
    sino
        // Si solo se compra un producto, no hay descuento por cantidad
        precioConDescuentoCantidad = precioConImpuestos
    fin si
	
    // Calcular costo de env�o
    Escribir("Ingrese el destino del env�o:")
    Leer(destinoEnvio)
    
    // Supongamos que el costo de env�o es $10 m�s $2 por kilogramo de peso
    Escribir("Ingrese el peso del paquete en kg:")
    Leer(pesoPaquete)
    costoEnvio = 10 + 2 * pesoPaquete
	
    // Calcular costo final del producto
    costoFinal = cantidadProductos * precioConDescuentoCantidad + costoEnvio
	
    // Mostrar desglose de costos
    Escribir("Costo final del producto: $", costoFinal)
    Escribir("Desglose:")
    Escribir("  - Descuento: $", descuento)
    Escribir("  - Impuestos: $", iva)
    Escribir("  - Descuento por cantidad: $", descuentoCantidad)
    Escribir("  - Costo de env�o: $", costoEnvio)
	
FinAlgoritmo