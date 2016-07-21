drop function if exists hasRoleI(varchar, varchar, int, varchar) cascade;
create function hasRoleI(IN taulu varchar, IN rooli varchar, IN avain int, IN kuka varchar) returns boolean as $$
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
grant execute on function hasRoleI(varchar, varchar, int, varchar) to sls;

