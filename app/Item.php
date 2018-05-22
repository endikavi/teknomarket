<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
   	// Nombre de la tabla en MySQL.
	protected $table='items';

	// Eloquent asume que cada tabla tiene una clave primaria con una columna llamada id.
	// Si éste no fuera el caso entonces hay que indicar cuál es nuestra clave primaria en la tabla:
	protected $primaryKey = 'serie';

	// Atributos que se pueden asignar de manera masiva.
	protected $fillable = array('modelo','precio','valoracion','fabricante','nombre','oferta','claves');
	
	// Aquí ponemos los campos que no queremos que se devuelvan en las consultas.
	protected $hidden = ['created_at','updated_at',]; 

	public function fabrics()
	{
		return $this->belongsTo('App\Fabric');
	}
}
