#using scripts\codescripts\struct;
#using scripts\shared\callbacks_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\system_shared;

#namespace zm_mod;

function init()
{
    callback::on_spawned(&give_starting_weapon);
}

function give_starting_weapon()
{
    mapname = getdvarstring("ui_mapname");

    if (mapname != "zm_prototype" &&
        mapname != "zm_asylum" &&
        mapname != "zm_sumpf" &&
        mapname != "zm_cosmodrome" &&
        mapname != "zm_theater" &&
        mapname != "zm_temple" &&
        mapname != "zm_moon")
    {
        return;
    }

    weapon = getweapon("pistol_standard");
    old_weapon = getweapon("pistol_m1911");
    rk = getweapon("pistol_burst");
    
    has_rk = false;
    if (self hasweapon(rk))
    {
        has_rk = true;
    }

    self takeweapon(old_weapon);
    self giveweapon(weapon);
    self switchtoweapon(weapon);
    
    if (has_rk)
    {
        self setweaponammostock(weapon, weapon.maxammo);
    }
    else
    {
        self setweaponammostock(weapon, 32);
    }
}

