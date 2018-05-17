<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

// Necesita los dos modelos Fabricante y Avion
use App\Fabric;
use App\Item;

use Response;

// Activamos uso de caché.
use Illuminate\Support\Facades\Cache; 

class itemFabricController extends Controller
{
    
    	public function __construct()
	{
		$this->middleware('auth.basic',['only'=>['store','update','destroy']]);
	}
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($idFabric)
    {
		// Devolverá todos los aviones.
		//return "Mostrando los aviones del fabricante con Id $idFabricante";
		$fabric=Fabric::find($idFabric);

		if (! $fabric)
		{
			// Se devuelve un array errors con los errores encontrados y cabecera HTTP 404.
			// En code podríamos indicar un código de error personalizado de nuestra aplicación si lo deseamos.
			return response()->json(['errors'=>array(['code'=>404,'message'=>'No se encuentra un fabricante con ese código.'])],404);
		}

		return response()->json(['status'=>'ok','data'=>$fabric->items()->get()],200);
		//return response()->json(['status'=>'ok','data'=>$fabricante->aviones],200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create($idFabric)
    {
        //
		return "Se muestra formulario para crear un avión del fabricante $idFabric.";
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request,$idFabric)
	{
		/* Necesitaremos el fabricante_id que lo recibimos en la ruta
		 #Serie (auto incremental)
		Modelo
		Longitud
		Capacidad
		Velocidad
		Alcance */

		// Primero comprobaremos si estamos recibiendo todos los campos.
		if ( !$request->input('modelo') || !$request->input('longitud') || !$request->input('capacidad') || !$request->input('velocidad') || !$request->input('alcance') )
		{
			// Se devuelve un array errors con los errores encontrados y cabecera HTTP 422 Unprocessable Entity – [Entidad improcesable] Utilizada para errores de validación.
			return response()->json(['errors'=>array(['code'=>422,'message'=>'Faltan datos necesarios para el proceso de alta.'])],422);
		}

		// Buscamos el Fabricante.
		$fabric = Fabric::find($idFabric);

		// Si no existe el fabricante que le hemos pasado mostramos otro código de error de no encontrado.
		if (!$fabric)
		{
			// Se devuelve un array errors con los errores encontrados y cabecera HTTP 404.
			// En code podríamos indicar un código de error personalizado de nuestra aplicación si lo deseamos.
			return response()->json(['errors'=>array(['code'=>404,'message'=>'No se encuentra un fabricante con ese código.'])],404);
		}

		// Si el fabricante existe entonces lo almacenamos.
		// Insertamos una fila en Aviones con create pasándole todos los datos recibidos.
		$newItem=$fabric->items()->create($request->all());

		// Más información sobre respuestas en http://jsonapi.org/format/
		// Devolvemos el código HTTP 201 Created – [Creada] Respuesta a un POST que resulta en una creación. Debería ser combinado con un encabezado Location, apuntando a la ubicación del nuevo recurso.
		$response = Response::make(json_encode(['data'=>$newItem]), 201)->header('Location', 'http://www.dominio.local/aviones/'.$newItem->serie)->header('Content-Type', 'application/json');
		return $response;
	}
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($idFabric,$idItem)
    {
        //
		return "Se muestra avión $idItem del fabricante $idFabric";
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
	public function edit($idFabric,$idItem)
	{
		//
		return "Se muestra formulario para editar el avión $idItem del fabricante $idItem";
	}
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
public function update(Request $request, $idFabricante, $idAvion)
	{
		// Comprobamos si el fabricante que nos están pasando existe o no.
		$fabric=Fabric::find($idFabric);

		// Si no existe ese fabricante devolvemos un error.
		if (!$fabric)
		{
			// Se devuelve un array errors con los errores encontrados y cabecera HTTP 404.
			// En code podríamos indicar un código de error personalizado de nuestra aplicación si lo deseamos.
			return response()->json(['errors'=>array(['code'=>404,'message'=>'No se encuentra un fabricante con ese código.'])],404);
		}		

		// El fabricante existe entonces buscamos el avion que queremos editar asociado a ese fabricante.
		$item = $fabric->Items()->find($idItem);

		// Si no existe ese avión devolvemos un error.
		if (!$item)
		{
			// Se devuelve un array errors con los errores encontrados y cabecera HTTP 404.
			// En code podríamos indicar un código de error personalizado de nuestra aplicación si lo deseamos.
			return response()->json(['errors'=>array(['code'=>404,'message'=>'No se encuentra un avión con ese código asociado al fabricante.'])],404);
		}


		// Listado de campos recibidos teóricamente.
    
		$modelo=$request->input('modelo');
		$marca=$request->input('marca');
		$nombre=$request->input('nombre');
        $categorias=$request->input('categorias');
		$precio=$request->input('precio');
		$valoracion=$request->input('valoracion');

		// Necesitamos detectar si estamos recibiendo una petición PUT o PATCH.
		// El método de la petición se sabe a través de $request->method();
		/*	Modelo		Longitud		Capacidad		Velocidad		Alcance */
		if ($request->method() === 'PATCH')
		{
			// Creamos una bandera para controlar si se ha modificado algún dato en el método PATCH.
			$bandera = false;

			// Actualización parcial de campos.
			if ($modelo)
			{
				$avion->modelo = $modelo;
				$bandera=true;
			}

			if ($longitud)
			{
				$avion->longitud = $longitud;
				$bandera=true;
			}

			if ($capacidad)
			{
				$avion->capacidad = $capacidad;
				$bandera=true;
			}

			if ($velocidad)
			{
				$avion->velocidad = $velocidad;
				$bandera=true;
			}

			if ($alcance)
			{
				$avion->alcance = $alcance;
				$bandera=true;
			}

			if ($bandera)
			{
				// Almacenamos en la base de datos el registro.
				$avion->save();
				return response()->json(['status'=>'ok','data'=>$avion], 200);
			}
			else
			{
				// Se devuelve un array errors con los errores encontrados y cabecera HTTP 304 Not Modified – [No Modificada] Usado cuando el cacheo de encabezados HTTP está activo
				// Este código 304 no devuelve ningún body, así que si quisiéramos que se mostrara el mensaje usaríamos un código 200 en su lugar.
				return response()->json(['errors'=>array(['code'=>304,'message'=>'No se ha modificado ningún dato del avión.'])],304);
			}

		}

		// Si el método no es PATCH entonces es PUT y tendremos que actualizar todos los datos.
		if (!$modelo || !$longitud || !$capacidad || !$velocidad || !$alcance)
		{
			// Se devuelve un array errors con los errores encontrados y cabecera HTTP 422 Unprocessable Entity – [Entidad improcesable] Utilizada para errores de validación.
			return response()->json(['errors'=>array(['code'=>422,'message'=>'Faltan valores para completar el procesamiento.'])],422);
		}

		$avion->modelo = $modelo;
		$avion->longitud = $longitud;
		$avion->capacidad = $capacidad;
		$avion->velocidad = $velocidad;
		$avion->alcance = $alcance;

		// Almacenamos en la base de datos el registro.
		$avion->save();

		return response()->json(['status'=>'ok','data'=>$avion], 200);
	}

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
	public function destroy($idFabricante,$idAvion)
	{
		// Comprobamos si el fabricante que nos están pasando existe o no.
		$fabricante=Fabricante::find($idFabricante);

		// Si no existe ese fabricante devolvemos un error.
		if (!$fabricante)
		{
			// Se devuelve un array errors con los errores encontrados y cabecera HTTP 404.
			// En code podríamos indicar un código de error personalizado de nuestra aplicación si lo deseamos.
			return response()->json(['errors'=>array(['code'=>404,'message'=>'No se encuentra un fabricante con ese código.'])],404);
		}		

		// El fabricante existe entonces buscamos el avion que queremos borrar asociado a ese fabricante.
		$avion = $fabricante->aviones()->find($idAvion);

		// Si no existe ese avión devolvemos un error.
		if (!$avion)
		{
			// Se devuelve un array errors con los errores encontrados y cabecera HTTP 404.
			// En code podríamos indicar un código de error personalizado de nuestra aplicación si lo deseamos.
			return response()->json(['errors'=>array(['code'=>404,'message'=>'No se encuentra un avión con ese código asociado a ese fabricante.'])],404);
		}

		// Procedemos por lo tanto a eliminar el avión.
		$avion->delete();

		// Se usa el código 204 No Content – [Sin Contenido] Respuesta a una petición exitosa que no devuelve un body (como una petición DELETE)
		// Este código 204 no devuelve body así que si queremos que se vea el mensaje tendríamos que usar un código de respuesta HTTP 200.
		return response()->json(['code'=>204,'message'=>'Se ha eliminado el avión correctamente.'],204);
	}
}
