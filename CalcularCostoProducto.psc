Algoritmo CalcularCostoProducto
    // Leer el precio original del producto
    Escribir("Ingrese el precio original del producto:")
    Leer(precioOriginal)
	
    // Leer el cupón de descuento
    Escribir("¿Tiene un cupón de descuento? (Sí/No)")
    Leer(respuestaCupon)
    
    si respuestaCupon = "Sí" entonces
        // Leer el porcentaje de descuento
        Escribir("Ingrese el porcentaje de descuento:")
        Leer(porcentajeDescuento)
        
        // Aplicar el descuento
        descuento = precioOriginal * porcentajeDescuento / 100
        precioConDescuento = precioOriginal - descuento
    sino
        // Si no hay cupón, el precio con descuento es igual al precio original
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
	
    // Calcular costo de envío
    Escribir("Ingrese el destino del envío:")
    Leer(destinoEnvio)
    
    // Supongamos que el costo de envío es $10 más $2 por kilogramo de peso
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
    Escribir("  - Costo de envío: $", costoEnvio)
	
FinAlgoritmo