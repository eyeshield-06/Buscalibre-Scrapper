# Buscalibre Scrapper

De momento usa *R*, pero tengo intencion de pasarlo a *Python*.

## Modo de uso

Agregar las **URLs** de los libros/articulos de interes al *.csv*. Tambien en este archivo incluye el valor *Alerta*, el cual como su nombre lo dice es una alerta de precio. Por ejemplo si queremos saber de un libro solo hasta que baje hasta cierto precio (especificado por nosotros).

archivo **books.csv**:
```
Libro,Alerta
https://www.buscalibre.cl/libro-juramentada-el-archivo-de-las-tormentas-3/9788413146591/p/54456343,20
https://www.buscalibre.cl/libro-el-ritmo-de-la-guerra-el-archivo-de-las-tormentas-4/9788413148649/p/62035115,20
https://www.buscalibre.cl/libro-el-elefante-desaparece/9788411071147/p/54051571,20
```

```sh
sh BLscrapperList.sh
```

https://github.com/user-attachments/assets/279d29f8-68c7-41ec-9e0e-65385a3e33ff
