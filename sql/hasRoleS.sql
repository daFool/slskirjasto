drop function if exists hasRoleS(varchar, varchar, varchar, varchar) cascade;
create function hasRoleS(IN taulu varchar, IN rooli varchar, IN avain varchar, IN kuka varchar) returns boolean as $$
declare
        roolirivi KAYTTAJAROOLI%ROWTYPE;
        
begin
        select into roolirivi * from kayttajarooli where kohde=taulu and kayttaja=kuka and rooli=rooli and kohdeAvainS=avain and kayttaja=kuka;
        if not found then
                return false;
        end if;        
        return true;
end;
$$ language 'plpgsql';
grant execute on function hasRoleS(varchar, varchar, varchar, varchar) to sls;

