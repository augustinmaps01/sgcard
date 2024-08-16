<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Auth;

class RoleMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
<<<<<<< HEAD
        if(!Auth::check())
        {
            return redirect('login');
        }
        $user =  Auth::user();
        if($user->roles){

        }
=======
   if(Auth::check()){
            $user = Auth::user();
            $role = $user->role;

           switch($role->user_type){
            case 'Admin':
                return redirect()->route('dashboard');
            case 'Compliance':
                return redirect()->route('compliance.dashboard');
            case 'Audit':
                return redirect()->route('dashboard');
            case 'Manager':
                return redirect()->route('dashboard');
            case 'User':
                return redirect()->route('home');
            default:
                return redirect()->route('login');
           }
   }
>>>>>>> 2789cab52378b3a101bef54dcf2ad1b29401a0c1
        return $next($request);
    }
}
