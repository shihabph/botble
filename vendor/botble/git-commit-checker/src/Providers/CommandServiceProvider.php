<?php

namespace Botble\GitCommitChecker\Providers;

use Botble\GitCommitChecker\Commands\InstallHooks;
use Botble\GitCommitChecker\Commands\InstallPhpCs;
use Botble\GitCommitChecker\Commands\PreCommitHook;
use Illuminate\Support\ServiceProvider;

class CommandServiceProvider extends ServiceProvider
{
    public function boot()
    {
        if ($this->app->runningInConsole()) {
            $this->commands([
                InstallHooks::class,
                PreCommitHook::class,
                InstallPhpCs::class,
            ]);
        }
    }
}
