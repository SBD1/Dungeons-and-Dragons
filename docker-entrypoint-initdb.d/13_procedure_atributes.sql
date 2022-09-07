-- PROCEDURE GASTAR PONTOS DE ATRIBUTOS
create or replace function spend_atributes() returns trigger as $spend_atributes$
    begin
        if(old.nivel <> new.nivel) then
            UPDATE atributos SET new.destreza = old.destreza + 1 WHERE id_atributo = aventureiro.id_aventureiro;
            UPDATE atributos SET new.carisma = old.carisma + 1 WHERE id_atributo = aventureiro.id_aventureiro;
            UPDATE atributos SET new.inteligencia = old.inteligencia + 1 WHERE id_atributo = aventureiro.id_aventureiro;
            UPDATE atributos SET new.forca = old.forca + 1 WHERE id_atributo = aventureiro.id_aventureiro;
            UPDATE atributos SET new.sabedoria = old.sabedoria + 1 WHERE id_atributo = aventureiro.id_aventureiro;
            UPDATE atributos SET new.constituicao = old.constituicao + 1 WHERE id_atributo = aventureiro.id_aventureiro;
        end if;
    end;

$spend_atributes$ language 'plpgsql';

create trigger spend_atributes_tg after update on aventureiro execute procedure spend_atributes();