-- =========================================
-- LIMPIEZA PREVIA
-- =========================================

DROP TABLE IF EXISTS public.correos_enviados CASCADE;
DROP TABLE IF EXISTS public.jefes_departamento CASCADE;

DROP SEQUENCE IF EXISTS public.correos_enviados_id_seq;
DROP SEQUENCE IF EXISTS public.jefes_departamento_id_seq;

-- =========================================
-- TABLA: correos_enviados
-- =========================================

CREATE TABLE public.correos_enviados (
    id integer NOT NULL,
    reporte_id integer,
    cedula character varying(20) NOT NULL,
    destinatario character varying(100) NOT NULL,
    asunto character varying(150) NOT NULL,
    mensaje text,
    foto_path character varying(255),
    estatus_confirmacion boolean DEFAULT false,
    fecha_envio timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    fecha_confirmacion timestamp without time zone,
    estatus_solucion boolean DEFAULT false
);

CREATE SEQUENCE public.correos_enviados_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.correos_enviados_id_seq 
    OWNED BY public.correos_enviados.id;

ALTER TABLE ONLY public.correos_enviados 
    ALTER COLUMN id SET DEFAULT nextval('public.correos_enviados_id_seq'::regclass);

-- =========================================
-- TABLA: jefes_departamento
-- =========================================

CREATE TABLE public.jefes_departamento (
    id integer NOT NULL,
    nombre_jefe character varying(100) NOT NULL,
    departamento character varying(100) NOT NULL,
    correo_electronico character varying(150) NOT NULL,
    telefono character varying(20),
    trial226 character(1),
