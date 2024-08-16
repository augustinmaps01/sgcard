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
        return $next($request);
    }
}
