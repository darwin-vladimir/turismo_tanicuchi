--
-- PostgreSQL database dump
--

-- Dumped from database version 10.13
-- Dumped by pg_dump version 10.13

-- Started on 2020-12-30 17:07:38

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3154 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 219 (class 1259 OID 37776)
-- Name: alojamiento_alojamiento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alojamiento_alojamiento (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    direccion character varying(100) NOT NULL,
    longitud character varying(200) NOT NULL,
    latitud character varying(200) NOT NULL,
    imagen character varying(100),
    descripcion text,
    created_at timestamp with time zone NOT NULL,
    parroquia_id integer NOT NULL
);


ALTER TABLE public.alojamiento_alojamiento OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 37774)
-- Name: alojamiento_alojamiento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alojamiento_alojamiento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alojamiento_alojamiento_id_seq OWNER TO postgres;

--
-- TOC entry 3155 (class 0 OID 0)
-- Dependencies: 218
-- Name: alojamiento_alojamiento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alojamiento_alojamiento_id_seq OWNED BY public.alojamiento_alojamiento.id;


--
-- TOC entry 221 (class 1259 OID 37796)
-- Name: atractivos_culturales_atractivocultural; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.atractivos_culturales_atractivocultural (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text,
    direccion character varying(100) NOT NULL,
    longitud character varying(200) NOT NULL,
    latitud character varying(200) NOT NULL,
    imagen character varying(100),
    fecha date,
    created_at timestamp with time zone NOT NULL,
    parroquia_id integer NOT NULL,
    tipo_id_id integer NOT NULL
);


ALTER TABLE public.atractivos_culturales_atractivocultural OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 37794)
-- Name: atractivos_culturales_atractivocultural_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.atractivos_culturales_atractivocultural_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.atractivos_culturales_atractivocultural_id_seq OWNER TO postgres;

--
-- TOC entry 3156 (class 0 OID 0)
-- Dependencies: 220
-- Name: atractivos_culturales_atractivocultural_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.atractivos_culturales_atractivocultural_id_seq OWNED BY public.atractivos_culturales_atractivocultural.id;


--
-- TOC entry 223 (class 1259 OID 37807)
-- Name: atractivos_culturales_tipoac; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.atractivos_culturales_tipoac (
    id integer NOT NULL,
    nombre_tipo_ac character varying(100) NOT NULL,
    descripcion text,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.atractivos_culturales_tipoac OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 37805)
-- Name: atractivos_culturales_tipoac_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.atractivos_culturales_tipoac_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.atractivos_culturales_tipoac_id_seq OWNER TO postgres;

--
-- TOC entry 3157 (class 0 OID 0)
-- Dependencies: 222
-- Name: atractivos_culturales_tipoac_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.atractivos_culturales_tipoac_id_seq OWNED BY public.atractivos_culturales_tipoac.id;


--
-- TOC entry 225 (class 1259 OID 37836)
-- Name: atractivos_naturales_atractivonatural; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.atractivos_naturales_atractivonatural (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text NOT NULL,
    direccion character varying(100) NOT NULL,
    longitud character varying(200) NOT NULL,
    latitud character varying(200) NOT NULL,
    imagen character varying(100),
    created_at timestamp with time zone NOT NULL,
    parroquia_id integer NOT NULL,
    tipo_id_id integer NOT NULL
);


ALTER TABLE public.atractivos_naturales_atractivonatural OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 37834)
-- Name: atractivos_naturales_atractivonatural_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.atractivos_naturales_atractivonatural_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.atractivos_naturales_atractivonatural_id_seq OWNER TO postgres;

--
-- TOC entry 3158 (class 0 OID 0)
-- Dependencies: 224
-- Name: atractivos_naturales_atractivonatural_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.atractivos_naturales_atractivonatural_id_seq OWNED BY public.atractivos_naturales_atractivonatural.id;


--
-- TOC entry 229 (class 1259 OID 37858)
-- Name: atractivos_naturales_imagenesatractivonatural; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.atractivos_naturales_imagenesatractivonatural (
    id integer NOT NULL,
    imagen character varying(100),
    atractivo_natural_id integer NOT NULL
);


ALTER TABLE public.atractivos_naturales_imagenesatractivonatural OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 37856)
-- Name: atractivos_naturales_imagenesatractivonatural_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.atractivos_naturales_imagenesatractivonatural_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.atractivos_naturales_imagenesatractivonatural_id_seq OWNER TO postgres;

--
-- TOC entry 3159 (class 0 OID 0)
-- Dependencies: 228
-- Name: atractivos_naturales_imagenesatractivonatural_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.atractivos_naturales_imagenesatractivonatural_id_seq OWNED BY public.atractivos_naturales_imagenesatractivonatural.id;


--
-- TOC entry 227 (class 1259 OID 37847)
-- Name: atractivos_naturales_tipoan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.atractivos_naturales_tipoan (
    id integer NOT NULL,
    nombre_tipo_an character varying(100) NOT NULL,
    descripcion text,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.atractivos_naturales_tipoan OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 37845)
-- Name: atractivos_naturales_tipoan_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.atractivos_naturales_tipoan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.atractivos_naturales_tipoan_id_seq OWNER TO postgres;

--
-- TOC entry 3160 (class 0 OID 0)
-- Dependencies: 226
-- Name: atractivos_naturales_tipoan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.atractivos_naturales_tipoan_id_seq OWNED BY public.atractivos_naturales_tipoan.id;


--
-- TOC entry 203 (class 1259 OID 37618)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 37616)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3161 (class 0 OID 0)
-- Dependencies: 202
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 205 (class 1259 OID 37628)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 37626)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3162 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 201 (class 1259 OID 37610)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 37608)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3163 (class 0 OID 0)
-- Dependencies: 200
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 213 (class 1259 OID 37720)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 37718)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3164 (class 0 OID 0)
-- Dependencies: 212
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 199 (class 1259 OID 37600)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 37598)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3165 (class 0 OID 0)
-- Dependencies: 198
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 197 (class 1259 OID 37589)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 37587)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3166 (class 0 OID 0)
-- Dependencies: 196
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 238 (class 1259 OID 37983)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 37890)
-- Name: empresa_empresa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empresa_empresa (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    direccion character varying(100) NOT NULL,
    longitud character varying(200) NOT NULL,
    latitud character varying(200) NOT NULL,
    descripcion text,
    imagen character varying(100),
    created_at timestamp with time zone NOT NULL,
    tipo_id_id integer NOT NULL
);


ALTER TABLE public.empresa_empresa OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 37888)
-- Name: empresa_empresa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.empresa_empresa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.empresa_empresa_id_seq OWNER TO postgres;

--
-- TOC entry 3167 (class 0 OID 0)
-- Dependencies: 230
-- Name: empresa_empresa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.empresa_empresa_id_seq OWNED BY public.empresa_empresa.id;


--
-- TOC entry 233 (class 1259 OID 37901)
-- Name: empresa_producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empresa_producto (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    detalle character varying(300) NOT NULL,
    imagen character varying(100),
    created_at timestamp with time zone NOT NULL,
    empresa_id integer NOT NULL
);


ALTER TABLE public.empresa_producto OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 37899)
-- Name: empresa_producto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.empresa_producto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.empresa_producto_id_seq OWNER TO postgres;

--
-- TOC entry 3168 (class 0 OID 0)
-- Dependencies: 232
-- Name: empresa_producto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.empresa_producto_id_seq OWNED BY public.empresa_producto.id;


--
-- TOC entry 235 (class 1259 OID 37912)
-- Name: empresa_tipoemp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empresa_tipoemp (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion character varying(125),
    imagen character varying(100),
    created_at timestamp with time zone NOT NULL,
    parroquia_id integer NOT NULL
);


ALTER TABLE public.empresa_tipoemp OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 37910)
-- Name: empresa_tipoemp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.empresa_tipoemp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.empresa_tipoemp_id_seq OWNER TO postgres;

--
-- TOC entry 3169 (class 0 OID 0)
-- Dependencies: 234
-- Name: empresa_tipoemp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.empresa_tipoemp_id_seq OWNED BY public.empresa_tipoemp.id;


--
-- TOC entry 215 (class 1259 OID 37754)
-- Name: parroquias_imagenesparroquia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parroquias_imagenesparroquia (
    id integer NOT NULL,
    imagen character varying(100) NOT NULL,
    parroquia_id integer
);


ALTER TABLE public.parroquias_imagenesparroquia OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 37752)
-- Name: parroquias_imagenesparroquia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.parroquias_imagenesparroquia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.parroquias_imagenesparroquia_id_seq OWNER TO postgres;

--
-- TOC entry 3170 (class 0 OID 0)
-- Dependencies: 214
-- Name: parroquias_imagenesparroquia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.parroquias_imagenesparroquia_id_seq OWNED BY public.parroquias_imagenesparroquia.id;


--
-- TOC entry 217 (class 1259 OID 37762)
-- Name: parroquias_parroquia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parroquias_parroquia (
    id integer NOT NULL,
    nombre_parr character varying(50) NOT NULL,
    direccion character varying(50) NOT NULL,
    longitud character varying(200),
    latitud character varying(200),
    slug character varying(50) NOT NULL,
    imagen character varying(100),
    historia text,
    info_general text,
    situacion_geografica text,
    email character varying(254) NOT NULL,
    telefono character varying(10) NOT NULL,
    celular character varying(10),
    pdf character varying(100),
    created_at timestamp with time zone NOT NULL,
    administrador_id integer NOT NULL
);


ALTER TABLE public.parroquias_parroquia OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 37760)
-- Name: parroquias_parroquia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.parroquias_parroquia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.parroquias_parroquia_id_seq OWNER TO postgres;

--
-- TOC entry 3171 (class 0 OID 0)
-- Dependencies: 216
-- Name: parroquias_parroquia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.parroquias_parroquia_id_seq OWNED BY public.parroquias_parroquia.id;


--
-- TOC entry 237 (class 1259 OID 37965)
-- Name: restaurante_restaurante; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.restaurante_restaurante (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text NOT NULL,
    direccion character varying(100) NOT NULL,
    longitud character varying(200) NOT NULL,
    latitud character varying(200) NOT NULL,
    imagen character varying(100),
    created_at timestamp with time zone NOT NULL,
    parroquia_id integer NOT NULL
);


ALTER TABLE public.restaurante_restaurante OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 37963)
-- Name: restaurante_restaurante_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.restaurante_restaurante_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.restaurante_restaurante_id_seq OWNER TO postgres;

--
-- TOC entry 3172 (class 0 OID 0)
-- Dependencies: 236
-- Name: restaurante_restaurante_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.restaurante_restaurante_id_seq OWNED BY public.restaurante_restaurante.id;


--
-- TOC entry 240 (class 1259 OID 38006)
-- Name: transporte_transporte; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transporte_transporte (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    ruta character varying(100) NOT NULL,
    imagen character varying(100),
    observaciones character varying(500),
    created_at timestamp with time zone NOT NULL,
    parroquia_id integer NOT NULL
);


ALTER TABLE public.transporte_transporte OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 38004)
-- Name: transporte_transporte_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transporte_transporte_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transporte_transporte_id_seq OWNER TO postgres;

--
-- TOC entry 3173 (class 0 OID 0)
-- Dependencies: 239
-- Name: transporte_transporte_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transporte_transporte_id_seq OWNED BY public.transporte_transporte.id;


--
-- TOC entry 207 (class 1259 OID 37662)
-- Name: usuario_usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_usuario (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    email character varying(254) NOT NULL,
    username character varying(150),
    direccion character varying(500),
    imagen character varying(200),
    usuario_admin boolean NOT NULL
);


ALTER TABLE public.usuario_usuario OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 37675)
-- Name: usuario_usuario_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_usuario_groups (
    id integer NOT NULL,
    usuario_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.usuario_usuario_groups OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 37673)
-- Name: usuario_usuario_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_usuario_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_usuario_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3174 (class 0 OID 0)
-- Dependencies: 208
-- Name: usuario_usuario_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_usuario_groups_id_seq OWNED BY public.usuario_usuario_groups.id;


--
-- TOC entry 206 (class 1259 OID 37660)
-- Name: usuario_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_usuario_id_seq OWNER TO postgres;

--
-- TOC entry 3175 (class 0 OID 0)
-- Dependencies: 206
-- Name: usuario_usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_usuario_id_seq OWNED BY public.usuario_usuario.id;


--
-- TOC entry 211 (class 1259 OID 37683)
-- Name: usuario_usuario_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_usuario_user_permissions (
    id integer NOT NULL,
    usuario_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.usuario_usuario_user_permissions OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 37681)
-- Name: usuario_usuario_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_usuario_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_usuario_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3176 (class 0 OID 0)
-- Dependencies: 210
-- Name: usuario_usuario_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_usuario_user_permissions_id_seq OWNED BY public.usuario_usuario_user_permissions.id;


--
-- TOC entry 2826 (class 2604 OID 37779)
-- Name: alojamiento_alojamiento id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alojamiento_alojamiento ALTER COLUMN id SET DEFAULT nextval('public.alojamiento_alojamiento_id_seq'::regclass);


--
-- TOC entry 2827 (class 2604 OID 37799)
-- Name: atractivos_culturales_atractivocultural id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atractivos_culturales_atractivocultural ALTER COLUMN id SET DEFAULT nextval('public.atractivos_culturales_atractivocultural_id_seq'::regclass);


--
-- TOC entry 2828 (class 2604 OID 37810)
-- Name: atractivos_culturales_tipoac id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atractivos_culturales_tipoac ALTER COLUMN id SET DEFAULT nextval('public.atractivos_culturales_tipoac_id_seq'::regclass);


--
-- TOC entry 2829 (class 2604 OID 37839)
-- Name: atractivos_naturales_atractivonatural id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atractivos_naturales_atractivonatural ALTER COLUMN id SET DEFAULT nextval('public.atractivos_naturales_atractivonatural_id_seq'::regclass);


--
-- TOC entry 2831 (class 2604 OID 37861)
-- Name: atractivos_naturales_imagenesatractivonatural id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atractivos_naturales_imagenesatractivonatural ALTER COLUMN id SET DEFAULT nextval('public.atractivos_naturales_imagenesatractivonatural_id_seq'::regclass);


--
-- TOC entry 2830 (class 2604 OID 37850)
-- Name: atractivos_naturales_tipoan id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atractivos_naturales_tipoan ALTER COLUMN id SET DEFAULT nextval('public.atractivos_naturales_tipoan_id_seq'::regclass);


--
-- TOC entry 2817 (class 2604 OID 37621)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2818 (class 2604 OID 37631)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2816 (class 2604 OID 37613)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2822 (class 2604 OID 37723)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2815 (class 2604 OID 37603)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2814 (class 2604 OID 37592)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2832 (class 2604 OID 37893)
-- Name: empresa_empresa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresa_empresa ALTER COLUMN id SET DEFAULT nextval('public.empresa_empresa_id_seq'::regclass);


--
-- TOC entry 2833 (class 2604 OID 37904)
-- Name: empresa_producto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresa_producto ALTER COLUMN id SET DEFAULT nextval('public.empresa_producto_id_seq'::regclass);


--
-- TOC entry 2834 (class 2604 OID 37915)
-- Name: empresa_tipoemp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresa_tipoemp ALTER COLUMN id SET DEFAULT nextval('public.empresa_tipoemp_id_seq'::regclass);


--
-- TOC entry 2824 (class 2604 OID 37757)
-- Name: parroquias_imagenesparroquia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parroquias_imagenesparroquia ALTER COLUMN id SET DEFAULT nextval('public.parroquias_imagenesparroquia_id_seq'::regclass);


--
-- TOC entry 2825 (class 2604 OID 37765)
-- Name: parroquias_parroquia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parroquias_parroquia ALTER COLUMN id SET DEFAULT nextval('public.parroquias_parroquia_id_seq'::regclass);


--
-- TOC entry 2835 (class 2604 OID 37968)
-- Name: restaurante_restaurante id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.restaurante_restaurante ALTER COLUMN id SET DEFAULT nextval('public.restaurante_restaurante_id_seq'::regclass);


--
-- TOC entry 2836 (class 2604 OID 38009)
-- Name: transporte_transporte id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transporte_transporte ALTER COLUMN id SET DEFAULT nextval('public.transporte_transporte_id_seq'::regclass);


--
-- TOC entry 2819 (class 2604 OID 37665)
-- Name: usuario_usuario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_usuario_id_seq'::regclass);


--
-- TOC entry 2820 (class 2604 OID 37678)
-- Name: usuario_usuario_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_usuario_groups ALTER COLUMN id SET DEFAULT nextval('public.usuario_usuario_groups_id_seq'::regclass);


--
-- TOC entry 2821 (class 2604 OID 37686)
-- Name: usuario_usuario_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_usuario_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.usuario_usuario_user_permissions_id_seq'::regclass);


--
-- TOC entry 3125 (class 0 OID 37776)
-- Dependencies: 219
-- Data for Name: alojamiento_alojamiento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alojamiento_alojamiento (id, nombre, direccion, longitud, latitud, imagen, descripcion, created_at, parroquia_id) FROM stdin;
1	sdsdf	sdsd	-4545	-54545	alojamientos/once_de_noviembre.jpg	sdfsdfsdfdsffds	2020-12-11 22:57:31.160611-05	2
3	xvxcv	zxczxc	545	84854			2020-12-12 00:04:06.531136-05	2
2	Hacienda la Cienega	sdfsdf	-78.621593	-0.7717748	alojamientos/poalo.jpg	dfdfdfv	2020-12-11 23:09:31.895759-05	2
4	Hostería la Ciénega	Carretera Panamericana Lasso	-78.621593	-0.7717748	alojamientos/cienega_4.webp	Hosteria La Cienega es una de las haciendas coloniales más antiguas de Ecuador, con más de 400 años de antigüedad. Situado cerca de las laderas del majestuoso volcán Cotopaxi y su Parque Nacional, esta mansión ha sido escenario de importantes acontecimientos en la historia científica y social del país. Hoy en día, convertido en un hotel boutique de lujo, La Cienega ofrece al visitante la experiencia única de permanecer dentro de sus muros de piedra volcánica de dos metros de espesor que son testigos silenciosos de la historia de un pueblo y la poesía de una época. Rodeado por la impresionante belleza natural del paisaje y el rico folclore de los pueblos indígenas del Ecuador. La Cienega es un recuerdo inolvidable de su visita a los Andes.	2020-12-18 23:32:42.827741-05	3
5	Hostería Cotopaxi	El establecimiento queda a 80 km del aeropuerto internacional Mariscal Sucre de Quito	-78.6463634	-0.7805272	alojamientos/hosteria_Cotopaxi_1.jpeg	La Hostería Cotopaxi Tour, situada en Tanicuchí, ofrece WiFi gratuita y parque infantil. También cuenta con restaurante. En el establecimiento hay aparcamiento privado gratuito. Las habitaciones están equipadas con TV de pantalla plana y baño privado con bañera o ducha. La recepción está abierta las 24 horas. El establecimiento cuenta con mesa de ping pong y servicio de alquiler de coches. La Hostería Cotopaxi Tour se halla a 17 km de Latacunga y a 30 km de Quilotoa.	2020-12-18 23:33:29.964369-05	3
\.


--
-- TOC entry 3127 (class 0 OID 37796)
-- Dependencies: 221
-- Data for Name: atractivos_culturales_atractivocultural; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.atractivos_culturales_atractivocultural (id, nombre, descripcion, direccion, longitud, latitud, imagen, fecha, created_at, parroquia_id, tipo_id_id) FROM stdin;
3	Iglesia de tanicuchi	asdasd	asd	-78.6458935	-0.7881539	atractivos_cultuales/jose_guango_bajo.jpg	\N	2020-12-11 22:54:55.614454-05	2	1
4	Plaza de toros	sfdgfdgg	dfdfgdfg	-78.6379349	-0.7803319		\N	2020-12-11 23:47:05.334007-05	2	1
5	Fiesta Barrio Central	Barrio Central	Tanicuchi	-4545	-54545		2020-12-19	2020-12-18 18:23:38.984303-05	2	1
6	Fiesta en cancun	chevre	tanicuchi	-454545	-4545		2020-12-18	2020-12-18 18:45:49.776799-05	2	1
7	Iglesia Católica de Tanicuchi	Su construcción data del siglo XX de la época republicana. Posee tres cuerpos, en el primero se ubica la perta de ingreso, a los lados se tiene enmarcado dos vanos ciegos, entre los espacios de los vanos se tiene pilastras resaltadas con guste recto acanalado, se remarca el segundo cuerpo con bandas y platabandas	Plaza Central de la Parroquia	- 78.6375243	- 07810991	atractivos_cultuales/iglesia.jpg	\N	2020-12-18 23:21:57.160175-05	3	2
8	Plaza de Toros Monumental de San Lorenzo	La plaza de toros es fija, construido en cemento armado y con todas la facilidades para realizarse una corrida de estas características, las entradas se venden en las taquillas de la plaza, además cuando hay corridas de toros se habilita un amplio espacio seguro para el parqueo de los autos, todas la facilidades para que el aficionado llene los graderíos de la plaza.	Cerca del parque central de Tanicuchi	-78.6368519	-0.7796139	atractivos_cultuales/Plaza_de_toros_1.jpg	\N	2020-12-18 23:25:59.493568-05	3	3
9	Centro Intercultural Comunitario Tanicuchi	En los inicios en esta construcción eran las instalaciones de la Escuela Manuel Quiroga, se aprovechó que ya no estaba en uso para crear este centro cultural. Fue construido en piedra para los cimientos, paredes portantes de laderillo y piedra, cubierta con estructura de madera.	Plaza Central de la Parroquia	- 78.638179	-0.780922	atractivos_cultuales/Centro_intercultural.jpg	\N	2020-12-18 23:27:11.319491-05	3	3
10	Estación del Ferrocarril Lasso	Fue construido con adobe y tapial, y sus paredes portantes descansan sobre cimientos de corridas de piedra y mortero de cal y arena. La estación tiene un área interna de 284 m² y un área total, con los andenes, de 409 m². También posee un área verde de 500 m.	Lasso, Tanicuchi, Ecuador	-78.6100014	-0.7538708	atractivos_cultuales/Estación_del_Ferrocarril_Lasso.jpg	\N	2020-12-18 23:28:05.489783-05	3	3
11	Parque Central de Tanicuchi	Barrio centro, Tanicuchi. Destinado a árboles, jardines y prados para la recreación o el descanso.	Plaza Central de la Parroquia	-78.6382203	-0.7811407	atractivos_cultuales/parque.jpg	\N	2020-12-18 23:29:08.221823-05	3	4
12	Fiestas Folklóricas	Se desarrollan una serie de festividades folklóricas, acompañadas de las ya afamadas corridas de toros que se han dado por siempre, y que desde hace unos 15 años se desarrollan en la gran plaza “San Lorenzo”, ubicada en la cabecera parroquial.	Tanicuchi, Ecuador	-78.636651	-0.79548	atractivos_cultuales/fiestas.jpg	2020-08-10	2020-12-18 23:30:35.193481-05	3	1
\.


--
-- TOC entry 3129 (class 0 OID 37807)
-- Dependencies: 223
-- Data for Name: atractivos_culturales_tipoac; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.atractivos_culturales_tipoac (id, nombre_tipo_ac, descripcion, created_at) FROM stdin;
1	Fiestas barriales		2020-12-10 21:13:12.407726-05
2	Iglesia		2020-12-18 23:04:37.83307-05
3	Plaza		2020-12-18 23:04:41.71801-05
4	Parque		2020-12-18 23:04:45.867045-05
\.


--
-- TOC entry 3131 (class 0 OID 37836)
-- Dependencies: 225
-- Data for Name: atractivos_naturales_atractivonatural; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.atractivos_naturales_atractivonatural (id, nombre, descripcion, direccion, longitud, latitud, imagen, created_at, parroquia_id, tipo_id_id) FROM stdin;
10	Cotopaxi	el mas bello	cotopaxi	-78.4077421	-0.6818445	atractivos_naturales/jose_guango_bajo.jpg	2020-12-13 18:52:02.282631-05	2	1
11	La chorrera de Pachosalag	Proviene de los nevados de los Ilinizas, la misma que es el medio de sustento de agua en el sector. Para acceder a la cascada se debe ir por una vía Toacaso-Sigchos hasta llegar a la Florícola Ecuanroses 2, existe una distancia de 30 minutos desde el poblado del Barrio Centro de Tanicuchí y hasta la chorrera una camina de 10 minutos.	Tanicuchi	-78.6548176	-0.7891463	atractivos_naturales/La_chorrera_de_pachosalag.jpg	2020-12-18 23:11:33.726393-05	3	1
12	Vertiente de agua dulce de Pachosalag	Ubicada a pocos minutos de la chorrera de Pachosalag, esta agua es utilizada como agua de riego y sustento para la población local, ese lugar es perfecto para realizar actividades turísticas por poseer maravillosos paisajes y está rodeado de abundante naturaleza, sus paisajes se prestan para realizar caminata y ciclismo.	Tanicuchi	-78.6548176	-0.7891463	atractivos_naturales/Vertiente_agua_dulce_de_pachosalag.jpg	2020-12-18 23:12:31.838627-05	3	1
13	Vertientes de Quingahuano	Tiene agua mineral que es medicinal, por lo mismo muchos de los pobladores se acercan al sector a bañarse o a recoger agua para su consumo. Es un lugar hermoso y privilegiado pues cuenta con una vegetación exuberante y una hermosa vista a los diferentes paisajes que existe en el sector.	Barrio Lasso/Tanicuchi	-78.6573243	-0.7889308	atractivos_naturales/Vertientes_de_Quingahuano.jpg	2020-12-18 23:15:15.18405-05	3	1
14	Parque Nacional Cotopaxi	El Parque Nacional Cotopaxi es un área extensa y boscosa de Ecuador, que comprende partes de las provincias de Cotopaxi, Pichincha y Napo. Es conocido por el volcán activo Cotopaxi, cuya cima está cubierta de nieve, y por la laguna de Limpiopungo. La fauna incluye halcones, cóndores y comadrejas. En el este, los flujos de lodo y las piedras de erupciones anteriores delinean el Valle Encantado. En las cercanías, se encuentra el Área Nacional de Recreación El Boliche, con caminos para pasear entre los pinos.	8C8Q+H8 Tanicuchí	-78.5639255	-0.6835397	atractivos_naturales/cotopaxi_3.jpg	2020-12-18 23:19:12.222986-05	3	3
\.


--
-- TOC entry 3135 (class 0 OID 37858)
-- Dependencies: 229
-- Data for Name: atractivos_naturales_imagenesatractivonatural; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.atractivos_naturales_imagenesatractivonatural (id, imagen, atractivo_natural_id) FROM stdin;
\.


--
-- TOC entry 3133 (class 0 OID 37847)
-- Dependencies: 227
-- Data for Name: atractivos_naturales_tipoan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.atractivos_naturales_tipoan (id, nombre_tipo_an, descripcion, created_at) FROM stdin;
1	Rios		2020-12-10 21:09:34.215752-05
2	Parque		2020-12-18 23:03:25.066177-05
3	Volcán		2020-12-18 23:03:33.429114-05
4	Laguna		2020-12-18 23:03:41.58479-05
5	Reserva Ecológica		2020-12-18 23:03:53.364717-05
\.


--
-- TOC entry 3109 (class 0 OID 37618)
-- Dependencies: 203
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3111 (class 0 OID 37628)
-- Dependencies: 205
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3107 (class 0 OID 37610)
-- Dependencies: 201
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add imagenes parroquia	6	add_imagenesparroquia
22	Can change imagenes parroquia	6	change_imagenesparroquia
23	Can delete imagenes parroquia	6	delete_imagenesparroquia
24	Can view imagenes parroquia	6	view_imagenesparroquia
25	Can add Parroquia	7	add_parroquia
26	Can change Parroquia	7	change_parroquia
27	Can delete Parroquia	7	delete_parroquia
28	Can view Parroquia	7	view_parroquia
29	Can add user	8	add_usuario
30	Can change user	8	change_usuario
31	Can delete user	8	delete_usuario
32	Can view user	8	view_usuario
33	Can add AtractivoNatural	9	add_atractivonatural
34	Can change AtractivoNatural	9	change_atractivonatural
35	Can delete AtractivoNatural	9	delete_atractivonatural
36	Can view AtractivoNatural	9	view_atractivonatural
37	Can add TipoAN	10	add_tipoan
38	Can change TipoAN	10	change_tipoan
39	Can delete TipoAN	10	delete_tipoan
40	Can view TipoAN	10	view_tipoan
41	Can add imagenes atractivo natural	11	add_imagenesatractivonatural
42	Can change imagenes atractivo natural	11	change_imagenesatractivonatural
43	Can delete imagenes atractivo natural	11	delete_imagenesatractivonatural
44	Can view imagenes atractivo natural	11	view_imagenesatractivonatural
45	Can add AtractivoCultural	12	add_atractivocultural
46	Can change AtractivoCultural	12	change_atractivocultural
47	Can delete AtractivoCultural	12	delete_atractivocultural
48	Can view AtractivoCultural	12	view_atractivocultural
49	Can add TipoAC	13	add_tipoac
50	Can change TipoAC	13	change_tipoac
51	Can delete TipoAC	13	delete_tipoac
52	Can view TipoAC	13	view_tipoac
53	Can add Alojamiento	14	add_alojamiento
54	Can change Alojamiento	14	change_alojamiento
55	Can delete Alojamiento	14	delete_alojamiento
56	Can view Alojamiento	14	view_alojamiento
57	Can add TipoTransporte	15	add_tipotransporte
58	Can change TipoTransporte	15	change_tipotransporte
59	Can delete TipoTransporte	15	delete_tipotransporte
60	Can view TipoTransporte	15	view_tipotransporte
61	Can add Transporte	16	add_transporte
62	Can change Transporte	16	change_transporte
63	Can delete Transporte	16	delete_transporte
64	Can view Transporte	16	view_transporte
65	Can add Empresa	17	add_empresa
66	Can change Empresa	17	change_empresa
67	Can delete Empresa	17	delete_empresa
68	Can view Empresa	17	view_empresa
69	Can add Producto	18	add_producto
70	Can change Producto	18	change_producto
71	Can delete Producto	18	delete_producto
72	Can view Producto	18	view_producto
73	Can add Categoria de la empresa	19	add_tipoemp
74	Can change Categoria de la empresa	19	change_tipoemp
75	Can delete Categoria de la empresa	19	delete_tipoemp
76	Can view Categoria de la empresa	19	view_tipoemp
77	Can add Restaurante	20	add_restaurante
78	Can change Restaurante	20	change_restaurante
79	Can delete Restaurante	20	delete_restaurante
80	Can view Restaurante	20	view_restaurante
\.


--
-- TOC entry 3119 (class 0 OID 37720)
-- Dependencies: 213
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-12-10 20:55:45.139119-05	2	geovany@utc.edu.ec	2	[{"changed": {"fields": ["Administrador parroquial"]}}]	8	1
2	2020-12-10 20:57:25.242044-05	1	San Lorenzo de Tanicuchi	1	[{"added": {}}]	7	1
3	2020-12-10 21:09:34.222746-05	1	Rios	1	[{"added": {}}]	10	1
4	2020-12-10 21:13:12.414724-05	1	Fiestas barriales	1	[{"added": {}}]	13	1
5	2020-12-10 23:03:33.930541-05	1	ImagenesAtractivoNatural object (1)	1	[{"added": {}}]	11	1
6	2020-12-10 23:03:40.053964-05	2	ImagenesAtractivoNatural object (2)	1	[{"added": {}}]	11	1
7	2020-12-10 23:03:47.800587-05	3	ImagenesAtractivoNatural object (3)	1	[{"added": {}}]	11	1
8	2020-12-10 23:04:34.26068-05	1	carniceria	1	[{"added": {}}]	17	1
9	2020-12-10 23:04:52.415147-05	2	asdasd	1	[{"added": {}}]	17	1
10	2020-12-10 23:05:13.942039-05	3	sdfsdfs	1	[{"added": {}}]	17	1
11	2020-12-10 23:05:40.141634-05	1	carnes	1	[{"added": {}}]	18	1
12	2020-12-10 23:06:15.910889-05	2	aasdasds	1	[{"added": {}}]	18	1
13	2020-12-10 23:06:26.148096-05	3	asdasd	1	[{"added": {}}]	18	1
14	2020-12-10 23:06:38.601017-05	4	asdasdfgh	1	[{"added": {}}]	18	1
15	2020-12-10 23:07:00.062599-05	5	ghjghjgh	1	[{"added": {}}]	18	1
16	2020-12-10 23:07:10.374844-05	6	ghjhjkjhl	1	[{"added": {}}]	18	1
17	2020-12-10 23:07:19.233726-05	7	ghkhjkhjk	1	[{"added": {}}]	18	1
18	2020-12-10 23:07:31.374617-05	8	klñkl	1	[{"added": {}}]	18	1
19	2020-12-10 23:07:48.033376-05	9	jkhjkhj	1	[{"added": {}}]	18	1
20	2020-12-10 23:08:43.596913-05	10	lklkl	1	[{"added": {}}]	18	1
21	2020-12-10 23:20:16.763156-05	1	pepito	1	[{"added": {}}]	20	1
22	2020-12-10 23:20:59.68092-05	3		1	[{"added": {}}]	8	1
23	2020-12-10 23:21:31.001226-05	3	stalin@utc.edu.ec	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo", "Administrador parroquial"]}}]	8	1
24	2020-12-10 23:21:58.052856-05	4		1	[{"added": {}}]	8	1
25	2020-12-10 23:22:43.372597-05	4	leonardo@utc.edu.ec	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo"]}}]	8	1
26	2020-12-10 23:25:19.300934-05	2	Toacazo	1	[{"added": {}}]	7	1
27	2020-12-11 00:43:40.750838-05	1	San Lorenzo de Tanicuchi	2	[{"changed": {"fields": ["Imagen"]}}]	7	1
28	2020-12-11 00:43:47.411871-05	2	Toacazo	2	[{"changed": {"fields": ["Imagen"]}}]	7	1
29	2020-12-11 00:47:32.186347-05	1	San Lorenzo de Tanicuchi	2	[{"changed": {"fields": ["Imagen"]}}]	7	1
30	2020-12-11 00:47:43.783867-05	2	Toacazo	2	[{"changed": {"fields": ["Imagen"]}}]	7	1
31	2020-12-11 00:52:30.759348-05	1	San Lorenzo de Tanicuchi	2	[{"changed": {"fields": ["Imagen"]}}]	7	1
32	2020-12-11 00:59:27.596532-05	1	San Lorenzo de Tanicuchi	2	[{"changed": {"fields": ["Imagen"]}}]	7	1
33	2020-12-11 01:00:25.316537-05	2	Toacazo	2	[{"changed": {"fields": ["Imagen"]}}]	7	1
34	2020-12-11 01:01:02.073486-05	2	Toacazo	2	[{"changed": {"fields": ["Imagen"]}}]	7	1
35	2020-12-11 01:01:13.691668-05	1	San Lorenzo de Tanicuchi	2	[{"changed": {"fields": ["Imagen"]}}]	7	1
36	2020-12-11 01:12:27.639618-05	2	Toacazo	2	[{"changed": {"fields": ["Imagen"]}}]	7	1
37	2020-12-11 01:16:50.695911-05	2	Toacazo	2	[{"changed": {"fields": ["Imagen"]}}]	7	1
38	2020-12-11 01:17:08.172702-05	1	San Lorenzo de Tanicuchi	2	[{"changed": {"fields": ["Imagen"]}}]	7	1
39	2020-12-11 13:39:03.920621-05	2	Carnes	2	[{"changed": {"fields": ["Descripcion"]}}]	19	1
40	2020-12-11 13:39:29.160174-05	2	Carnes	2	[{"changed": {"fields": ["Descripcion"]}}]	19	1
41	2020-12-11 13:41:00.393463-05	2	Carnes	2	[{"changed": {"fields": ["Descripcion"]}}]	19	1
42	2020-12-11 13:42:32.075675-05	2	Carnes	2	[]	19	1
43	2020-12-11 13:42:58.388252-05	1	Lacteos	2	[{"changed": {"fields": ["Descripcion"]}}]	19	1
44	2020-12-18 22:52:17.066445-05	5		1	[{"added": {}}]	8	1
45	2020-12-18 22:52:47.154518-05	5	geovany@utc.edu.ec	2	[{"changed": {"fields": ["Nombres", "Apellidos", "Correo", "Administrador parroquial"]}}]	8	1
46	2020-12-18 22:59:04.924691-05	3	San Lorenzo de Tanicuchi	1	[{"added": {}}]	7	1
47	2020-12-18 23:03:25.083193-05	2	Parque	1	[{"added": {}}]	10	1
48	2020-12-18 23:03:33.431112-05	3	Volcán	1	[{"added": {}}]	10	1
49	2020-12-18 23:03:41.587789-05	4	Laguna	1	[{"added": {}}]	10	1
50	2020-12-18 23:03:53.367712-05	5	Reserva Ecológica	1	[{"added": {}}]	10	1
51	2020-12-18 23:04:37.847059-05	2	Iglesia	1	[{"added": {}}]	13	1
52	2020-12-18 23:04:41.720007-05	3	Plaza	1	[{"added": {}}]	13	1
53	2020-12-18 23:04:45.869046-05	4	Parque	1	[{"added": {}}]	13	1
\.


--
-- TOC entry 3105 (class 0 OID 37600)
-- Dependencies: 199
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	parroquias	imagenesparroquia
7	parroquias	parroquia
8	usuario	usuario
9	atractivos_naturales	atractivonatural
10	atractivos_naturales	tipoan
11	atractivos_naturales	imagenesatractivonatural
12	atractivos_culturales	atractivocultural
13	atractivos_culturales	tipoac
14	alojamiento	alojamiento
15	transporte	tipotransporte
16	transporte	transporte
17	empresa	empresa
18	empresa	producto
19	empresa	tipoemp
20	restaurante	restaurante
\.


--
-- TOC entry 3103 (class 0 OID 37589)
-- Dependencies: 197
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-12-10 20:47:33.870364-05
2	contenttypes	0002_remove_content_type_name	2020-12-10 20:47:33.939915-05
3	auth	0001_initial	2020-12-10 20:47:34.182986-05
4	auth	0002_alter_permission_name_max_length	2020-12-10 20:47:34.448605-05
5	auth	0003_alter_user_email_max_length	2020-12-10 20:47:34.464221-05
6	auth	0004_alter_user_username_opts	2020-12-10 20:47:34.479848-05
7	auth	0005_alter_user_last_login_null	2020-12-10 20:47:34.495472-05
8	auth	0006_require_contenttypes_0002	2020-12-10 20:47:34.495472-05
9	auth	0007_alter_validators_add_error_messages	2020-12-10 20:47:34.511094-05
10	auth	0008_alter_user_username_max_length	2020-12-10 20:47:34.526721-05
11	auth	0009_alter_user_last_name_max_length	2020-12-10 20:47:34.526721-05
12	auth	0010_alter_group_name_max_length	2020-12-10 20:47:34.573594-05
13	auth	0011_update_proxy_permissions	2020-12-10 20:47:34.573594-05
14	usuario	0001_initial	2020-12-10 20:47:34.839214-05
15	admin	0001_initial	2020-12-10 20:47:35.240576-05
16	admin	0002_logentry_remove_auto_add	2020-12-10 20:47:35.349943-05
17	admin	0003_logentry_add_action_flag_choices	2020-12-10 20:47:35.365571-05
18	admin	0004_auto_20201017_2028	2020-12-10 20:47:35.412442-05
19	admin	0005_auto_20201121_2134	2020-12-10 20:47:35.428067-05
20	parroquias	0001_initial	2020-12-10 20:47:35.615564-05
21	alojamiento	0001_initial	2020-12-10 20:47:35.771808-05
22	alojamiento	0002_alojamiento_parroquia	2020-12-10 20:47:35.78743-05
23	alojamiento	0003_auto_20201128_1255	2020-12-10 20:47:35.989389-05
24	atractivos_culturales	0001_initial	2020-12-10 20:47:36.223754-05
25	atractivos_culturales	0002_auto_20201128_1100	2020-12-10 20:47:36.239378-05
26	atractivos_culturales	0003_auto_20201128_1255	2020-12-10 20:47:36.567497-05
27	atractivos_naturales	0001_initial	2020-12-10 20:47:36.81749-05
28	atractivos_naturales	0002_auto_20201128_1100	2020-12-10 20:47:36.925684-05
29	atractivos_naturales	0003_auto_20201128_1255	2020-12-10 20:47:37.208898-05
30	empresa	0001_initial	2020-12-10 20:47:37.59951-05
31	empresa	0002_auto_20201128_1100	2020-12-10 20:47:37.646379-05
32	empresa	0003_auto_20201128_1255	2020-12-10 20:47:38.07646-05
33	parroquias	0002_auto_20201128_1100	2020-12-10 20:47:38.107707-05
34	parroquias	0003_auto_20201128_1255	2020-12-10 20:47:38.310827-05
35	restaurante	0001_initial	2020-12-10 20:47:38.420199-05
36	restaurante	0002_auto_20201128_1255	2020-12-10 20:47:38.654562-05
37	sessions	0001_initial	2020-12-10 20:47:38.779561-05
38	transporte	0001_initial	2020-12-10 20:47:39.071054-05
39	transporte	0002_auto_20201128_1255	2020-12-10 20:47:39.383536-05
40	empresa	0004_auto_20201211_1353	2020-12-11 13:53:32.190744-05
41	empresa	0005_auto_20201211_1355	2020-12-11 13:55:28.488882-05
42	empresa	0006_auto_20201211_1824	2020-12-11 18:24:36.186655-05
43	transporte	0003_remove_transporte_tipo_id	2020-12-11 23:14:31.717679-05
44	transporte	0004_delete_tipotransporte	2020-12-11 23:15:29.501779-05
45	parroquias	0004_auto_20201211_2343	2020-12-11 23:43:21.99224-05
46	atractivos_culturales	0004_auto_20201211_2352	2020-12-11 23:52:27.26009-05
47	atractivos_naturales	0004_auto_20201211_2352	2020-12-11 23:52:27.360027-05
48	alojamiento	0004_auto_20201212_0003	2020-12-12 00:03:29.33094-05
49	empresa	0007_auto_20201212_0007	2020-12-12 00:07:40.95609-05
50	transporte	0005_auto_20201212_0007	2020-12-12 00:07:40.983077-05
51	atractivos_naturales	0005_auto_20201213_1844	2020-12-13 18:45:03.772967-05
\.


--
-- TOC entry 3144 (class 0 OID 37983)
-- Dependencies: 238
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
o2adpiebc28gncnpzy152lg2xgy1oi2j	M2Q4ZDg5NGQ2OGIxNDlhM2UxMDJlZjgyOGRiZTdhODIyNDIzYmQ2Zjp7InBhcnJvcXVpYV9pZCI6InNhbi1sb3JlbnpvLWRlLXRhbmljdWNoaSJ9	2020-12-25 17:10:52.107571-05
ff1y9qeclhow0fype4l1b8zmi2mlxeb0	M2Q4ZDg5NGQ2OGIxNDlhM2UxMDJlZjgyOGRiZTdhODIyNDIzYmQ2Zjp7InBhcnJvcXVpYV9pZCI6InNhbi1sb3JlbnpvLWRlLXRhbmljdWNoaSJ9	2020-12-25 17:29:55.101853-05
8z9v3p2ji9atlvhk5cklul84ln8r221k	M2Q4ZDg5NGQ2OGIxNDlhM2UxMDJlZjgyOGRiZTdhODIyNDIzYmQ2Zjp7InBhcnJvcXVpYV9pZCI6InNhbi1sb3JlbnpvLWRlLXRhbmljdWNoaSJ9	2020-12-25 18:17:59.471922-05
q7pvr28kygqc9lz3s8absu7ayjigfi3o	ZTBjZWMxYWI4M2ZjY2M4OTAyZjhmNWRiNDViYTRmOGRlY2E5M2NlZTp7InBhcnJvcXVpYV9pZCI6InNhbi1sb3JlbnpvLWRlLXRhbmljdWNoaSIsIl9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYWZhMjI3MzMzODE3NjY0NTkxOGQyOTBiYzQwZjgwNjIzNjZmZjhhIiwicGtfcGFycm9xdWlhIjoxfQ==	2020-12-25 18:27:26.330503-05
f8oty8wbnh5gwdvajifipbbffk6s6odc	M2Q4ZDg5NGQ2OGIxNDlhM2UxMDJlZjgyOGRiZTdhODIyNDIzYmQ2Zjp7InBhcnJvcXVpYV9pZCI6InNhbi1sb3JlbnpvLWRlLXRhbmljdWNoaSJ9	2020-12-25 18:32:03.742122-05
5xqhucbt8kwa7885gasdmj57j3p4ak3b	YTgwMjVlOGRmNjQ4NjI4OTc2MGE5OTM5ODBlZWVhMDQ3MmFiYjgwNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMzg4NWJmNzZmNTJlN2I4ZDcwYTYwMmMzMDRiZDZlMzY0NDFmZGVkIiwicGtfcGFycm9xdWlhIjoyfQ==	2021-01-01 18:21:51.368946-05
kjgwhijrg62pviifsydjlmhiw1csxw9j	MjkxYTdiZDk1OGNiNzA4YTU4ZDVhMmE1NjY3ZWYxNGYxMzY2YmI3Mzp7InBhcnJvcXVpYV9pZCI6InNhbi1sb3JlbnpvLWRlLXRhbmljdWNoaSIsIl9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYWZhMjI3MzMzODE3NjY0NTkxOGQyOTBiYzQwZjgwNjIzNjZmZjhhIn0=	2020-12-25 18:44:09.009648-05
1azqcm3c9tbgwyj8h28nbzyq1hbro67m	ZjI5MzE2NmNkN2MxYTRhM2E5M2VmNWI4OGQ1YWI2OTI2MWRhYjMzYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYWZhMjI3MzMzODE3NjY0NTkxOGQyOTBiYzQwZjgwNjIzNjZmZjhhIiwicGtfcGFycm9xdWlhIjoxfQ==	2020-12-25 19:27:07.499395-05
31f7lilm7quj69cs3dy4344owbb9zmt3	ZjI5MzE2NmNkN2MxYTRhM2E5M2VmNWI4OGQ1YWI2OTI2MWRhYjMzYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYWZhMjI3MzMzODE3NjY0NTkxOGQyOTBiYzQwZjgwNjIzNjZmZjhhIiwicGtfcGFycm9xdWlhIjoxfQ==	2020-12-25 19:30:55.453385-05
4gxbopturugc5dgkd4zc7rseyoagros3	ZmFjMjI3ZDRlYzUwOTIxZTU5NDg0YjYyNTA5NjM2NTJiNWYxNmYyZTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMzg4NWJmNzZmNTJlN2I4ZDcwYTYwMmMzMDRiZDZlMzY0NDFmZGVkIn0=	2020-12-25 20:05:44.258059-05
ekyhtasct5q8ajhxb6d5ttw4b7ct1136	ZTBjZWMxYWI4M2ZjY2M4OTAyZjhmNWRiNDViYTRmOGRlY2E5M2NlZTp7InBhcnJvcXVpYV9pZCI6InNhbi1sb3JlbnpvLWRlLXRhbmljdWNoaSIsIl9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzYWZhMjI3MzMzODE3NjY0NTkxOGQyOTBiYzQwZjgwNjIzNjZmZjhhIiwicGtfcGFycm9xdWlhIjoxfQ==	2020-12-24 21:18:32.046497-05
s1dj66gvu5db36jbxq37s8u3tgywerkm	ZjA5NjUzZmI0ODU1M2U4YTBjODk2ZTUwMWMwYmYwNmQ2NGEzNTNmYjp7InBhcnJvcXVpYV9pZCI6InRvYWNhem8ifQ==	2020-12-24 23:57:19.216721-05
56n4gt0saywyteu6y0mgk4a6zwra0whx	YTgwMjVlOGRmNjQ4NjI4OTc2MGE5OTM5ODBlZWVhMDQ3MmFiYjgwNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMzg4NWJmNzZmNTJlN2I4ZDcwYTYwMmMzMDRiZDZlMzY0NDFmZGVkIiwicGtfcGFycm9xdWlhIjoyfQ==	2020-12-25 20:14:43.306783-05
p1au1d0cq1bgwsoow422pv0m8zrwzd4v	YjQ5OTI5NzJkNTcyYjJkMjliZjZmZDYzY2M5MWU1MmQzZjdmODMzZjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMzg4NWJmNzZmNTJlN2I4ZDcwYTYwMmMzMDRiZDZlMzY0NDFmZGVkIiwicGtfcGFycm9xdWlhIjoyLCJwYXJyb3F1aWFfaWQiOiJ0b2FjYXpvIn0=	2020-12-26 12:36:04.366876-05
hbenmfn8drwn8ds0lnm8rwmyla6z1jdp	ZjA5NjUzZmI0ODU1M2U4YTBjODk2ZTUwMWMwYmYwNmQ2NGEzNTNmYjp7InBhcnJvcXVpYV9pZCI6InRvYWNhem8ifQ==	2020-12-26 13:09:39.475586-05
77k0py7xcz8zmufbqfm3uc4hfw5z6co8	M2Q4ZDg5NGQ2OGIxNDlhM2UxMDJlZjgyOGRiZTdhODIyNDIzYmQ2Zjp7InBhcnJvcXVpYV9pZCI6InNhbi1sb3JlbnpvLWRlLXRhbmljdWNoaSJ9	2020-12-25 02:10:38.018541-05
h5w8ah1af8y36maf80n6cq068d9j7sid	ZjA5NjUzZmI0ODU1M2U4YTBjODk2ZTUwMWMwYmYwNmQ2NGEzNTNmYjp7InBhcnJvcXVpYV9pZCI6InRvYWNhem8ifQ==	2020-12-25 02:28:08.38697-05
paqfxogpyazqd36dbtr8a7y55bhda6bl	YTgwMjVlOGRmNjQ4NjI4OTc2MGE5OTM5ODBlZWVhMDQ3MmFiYjgwNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMzg4NWJmNzZmNTJlN2I4ZDcwYTYwMmMzMDRiZDZlMzY0NDFmZGVkIiwicGtfcGFycm9xdWlhIjoyfQ==	2020-12-26 21:07:28.066008-05
k6vlzapy93brpct9rx7pigvo7jevdz8w	M2Q4ZDg5NGQ2OGIxNDlhM2UxMDJlZjgyOGRiZTdhODIyNDIzYmQ2Zjp7InBhcnJvcXVpYV9pZCI6InNhbi1sb3JlbnpvLWRlLXRhbmljdWNoaSJ9	2020-12-25 13:18:23.400974-05
g2k0pgrqtiqnjktc398n8oc5w0epa4wm	ZjRhNmZlOWMyYmQ3Yjg4OTViZDNjYjUzYjZkOTA2YTg1MTcxZDM4NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMjIwYzczNDA0YjdjYWZjNWU3ZGViYjcwY2Y3MGM0MTQxNDUyZDJjIiwicGFycm9xdWlhX2lkIjoic2FuLWxvcmVuem8tZGUtdGFuaWN1Y2hpIn0=	2020-12-25 13:47:18.442596-05
8ycckf2wmtn1ovvp70o0jd438sq18gz0	NzFjNGQ2MTkxNDRkYmM1YmVlZjRhYmU2Y2I0Mjc0ZTdkYzkwNDE1YTp7InBhcnJvcXVpYV9pZCI6InRvYWNhem8iLCJfYXV0aF91c2VyX2lkIjoiMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjM4ODViZjc2ZjUyZTdiOGQ3MGE2MDJjMzA0YmQ2ZTM2NDQxZmRlZCIsInBrX3BhcnJvcXVpYSI6Mn0=	2020-12-27 18:11:19.20825-05
dus67uaxv1h4i3l0f9ye1od3e235yb90	NzFjNGQ2MTkxNDRkYmM1YmVlZjRhYmU2Y2I0Mjc0ZTdkYzkwNDE1YTp7InBhcnJvcXVpYV9pZCI6InRvYWNhem8iLCJfYXV0aF91c2VyX2lkIjoiMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjM4ODViZjc2ZjUyZTdiOGQ3MGE2MDJjMzA0YmQ2ZTM2NDQxZmRlZCIsInBrX3BhcnJvcXVpYSI6Mn0=	2020-12-27 18:52:11.273608-05
hb0dfjh6gy3uo3cp1u3b2xqu6eyq61mu	ZjA5NjUzZmI0ODU1M2U4YTBjODk2ZTUwMWMwYmYwNmQ2NGEzNTNmYjp7InBhcnJvcXVpYV9pZCI6InRvYWNhem8ifQ==	2021-01-02 16:29:35.206357-05
4b551ply6c65rpq2ul67rabigp7oojj2	YjQ5OTI5NzJkNTcyYjJkMjliZjZmZDYzY2M5MWU1MmQzZjdmODMzZjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMzg4NWJmNzZmNTJlN2I4ZDcwYTYwMmMzMDRiZDZlMzY0NDFmZGVkIiwicGtfcGFycm9xdWlhIjoyLCJwYXJyb3F1aWFfaWQiOiJ0b2FjYXpvIn0=	2020-12-27 22:47:06.2849-05
8azp4d2czuxdbv5uq77mkg2zplrsamiq	NDcyNjJiZTdlYjkzZDVlOGE3YjUxODY2M2FkYTg0YjNhY2E5ZDVmYjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YzFmMWFiMmY5MTcxZTA4MDVjNmYwMDI5Mzc2ZDY0M2E1ZjAzZTIxIiwicGFycm9xdWlhX2lkIjoic2FuLWxvcmVuem8tZGUtdGFuaWN1Y2hpIiwicGtfcGFycm9xdWlhIjozfQ==	2021-01-13 16:24:56.78245-05
dlh4tj3ij79uvg97ievwrmok22ai9df2	NDI3OWQ0ZjMxZWVmMGM4Yzk0MjA1Njg1MGI5MWI5YjYzYTQ4ZjE5ZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YzFmMWFiMmY5MTcxZTA4MDVjNmYwMDI5Mzc2ZDY0M2E1ZjAzZTIxIiwicGtfcGFycm9xdWlhIjozLCJwYXJyb3F1aWFfaWQiOiJzYW4tbG9yZW56by1kZS10YW5pY3VjaGkifQ==	2021-01-01 23:19:31.080525-05
\.


--
-- TOC entry 3137 (class 0 OID 37890)
-- Dependencies: 231
-- Data for Name: empresa_empresa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empresa_empresa (id, nombre, direccion, longitud, latitud, descripcion, imagen, created_at, tipo_id_id) FROM stdin;
4	Centro de Salud	dsadsa	-78.686247	-0.7584538	dsaadsdas		2020-12-11 23:30:42.627405-05	5
6	Indulac	Tanicuchi	-2.0777993	-79.9388231	Industrias Lacteas S.A. Indulac es una empresa en Ecuador, con sede principal en Guayaquil. Opera en Comerciantes al por Mayor de Productos Lácteos	empresa/indulac.jpg	2020-12-18 23:43:04.332529-05	8
7	La Avelina	Tanicuchi	-0.8030977	-78.6262148	Productos de calidad con el mismo sabor desde 1932	empresa/avelina.jpg	2020-12-18 23:44:13.114576-05	7
8	Familia Sancela	Tanicuchi, Ecuador	-0.7600851	-78.6109383	Productos Familia Sancela del Ecuador S.A. inició operaciones en 1983.	empresa/familia_Sancela.jpg	2020-12-18 23:46:20.113789-05	8
5	Aceropaxi (Novacero)	Tanicuchi	-78.6153204	-0.7898479	Empresa ecuatoriana, pionera y líder en el mercado desde 1973, con experiencia en la creación de soluciones de acero.	empresa/novacero.jpg	2020-12-18 23:42:01.90763-05	8
9	Terecita	tanicuchi	-0.7877721	-78.6629249	venta de aves	empresa/tani10_D8QgKQ4.jpg	2020-12-19 08:24:14.343813-05	9
\.


--
-- TOC entry 3139 (class 0 OID 37901)
-- Dependencies: 233
-- Data for Name: empresa_producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empresa_producto (id, nombre, detalle, imagen, created_at, empresa_id) FROM stdin;
11	adfgDS	SDFSdf	productos/jose_guango_bajo.jpg	2020-12-11 23:31:08.190061-05	4
12	Sistemas Constructivos Estructurales	Flejes y Perfiles Especiales, Vigas Estructurales, Vigas laminadas, Novalosa, Varilla Trefilada, Mallas Electrosoldadas, Vigas y Columnas Electrosoldadas	productos/vigas_estructurales.jpg	2020-12-18 23:50:10.409364-05	5
13	Planchas y Flejes en Rollo	Planchas sin recubrimiento, Galvanizadas, Antideslizantes, Flejes en rollo	productos/flejes_en_rollo.jpg	2020-12-18 23:52:17.828982-05	5
\.


--
-- TOC entry 3141 (class 0 OID 37912)
-- Dependencies: 235
-- Data for Name: empresa_tipoemp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empresa_tipoemp (id, nombre, descripcion, imagen, created_at, parroquia_id) FROM stdin;
5	asdffgd	dfdfsa	tipo_empresa/poalo.jpg	2020-12-11 23:30:14.83071-05	2
6	Ganadera	La empresa ganadera es una unidad económica de producción que combina los factores (tierra, mano de obra, etc.).	tipo_empresa/hosteria_Cotopaxi_3.jpg	2020-12-18 23:35:00.26749-05	3
7	Agroindustrial	Producción, industrialización y comercialización de productos agropecuarios, forestales y otros recursos naturales biológicos	tipo_empresa/15011559167_9c614bd9ba_b.jpg	2020-12-18 23:37:49.64032-05	3
8	Industrial	Aquellas que se dedican a convertir materias primas en otros productos.	tipo_empresa/industrial.jpg	2020-12-18 23:40:45.573085-05	3
9	Avicola	venta de aves	tipo_empresa/tani8.jpg	2020-12-19 08:22:50.671023-05	3
\.


--
-- TOC entry 3121 (class 0 OID 37754)
-- Dependencies: 215
-- Data for Name: parroquias_imagenesparroquia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.parroquias_imagenesparroquia (id, imagen, parroquia_id) FROM stdin;
4	parroquias/mulalo.jpeg	2
5	parroquias/poalo_XZx33KT.jpg	2
6	parroquias/jose_guango_bajo.jpg	2
7	parroquias/tani2_jEJAfGF.jpg	3
8	parroquias/tani3.jpg	3
9	parroquias/tani4_5dUjWmu.jpg	3
10	parroquias/tani5_QjSY686.jpg	3
11	parroquias/tani6_lhCTTdv.jpg	3
12	parroquias/turismo02.jpg	3
\.


--
-- TOC entry 3123 (class 0 OID 37762)
-- Dependencies: 217
-- Data for Name: parroquias_parroquia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.parroquias_parroquia (id, nombre_parr, direccion, longitud, latitud, slug, imagen, historia, info_general, situacion_geografica, email, telefono, celular, pdf, created_at, administrador_id) FROM stdin;
2	Toacazo	Parroquia Toacaso. Calle Bolívar y Manabi frente a	-78.6910558	-0.7568866	toacazo	parroquias/poalo.jpg	Las investigaciones arqueológicas y etnográficas hablan de la existencia de un curacazgo Panzaleo, cuyo ámbito de influencia se circunscribe desde el valle de Machachi hasta el valle del Patate. Se menciona a los Angamarcas y Sigchos que se distribuyeron en los territorios de lo que hoy es Toacaso, quienes tuvieron relaciones comerciales con los Tsáchilas. De allí se afirma que, Según Federico González Suárez, Toacaso, etimológicamente, viene del idioma tsáchila: Toa que significa Tierra y Catzo que quiere decir dormir; entonces Toacaso significa “La tierra para dormir, la tierra para descansar, la tierra para soñar”. A muchos toacasenses les gusta la leyenda que relata: “Rumiñahui luego de incendiar Quito, capital del Reino, envió hasta nuestro territorio una considerable población y se dirigió a la Costa, unió a los jatunsigchos con los angamarcas, en su propósito de presentar una sólida defensa a la invasión española. Encontró, en lo que hoy es Toacaso, un lugar propicio para vivir y un sitio estratégico para defenderse de la invasión de los viracochas.	La población actual de Toacaso es de aproximadamente 8.000 habitantes, el último censo arrojó una cifra de 7.591 pobladores sin incluir los populosos barrios de Chilla Buena Esperanza,Pintze Chico, Pintze Grande, Quinte Buena Esperanza, Quinte San Antonio, San Ignacio, una mayor parte de Wintza, San Bartolo y San Carlos. El índice de la población indígena es del orden del 35 %.	recuperación de su identidad, su idioma es el Kichwa y castellano (segunda lengua).	gualterpincha@hotmail.com	03 2716-43	0987654321		2020-12-10 23:25:19.296936-05	3
3	Tanicuchi	Parroquia de Tanicuchi - Plaza Central de la Parro	-0.7877721	-78.6629249	san-lorenzo-de-tanicuchi	parroquias/tani2_pi4MWnB.jpg	En la conformación preincásica del territorio de la actual provincia de Cotopaxi, donde se ubica geográficamente los primeros asentamientos en la parroquia de Tanicuchí, los estudios arqueológicos muestran que estuvo habitado por diversas parcialidades aborígenes que entraron por oleadas migratorias.\r\n\r\nEsta es la visión planteada por algunos historiadores, que consideran que la civilización primitiva que llegó a la región fue la protopanzalea de descendencia chibcha.\r\n\r\nTambién dentro del análisis histórico se consideran que existió la presencia de otras olas migratorias como la de los Cayapas-Colorados procedentes de Centro América; los Atacameños, los Quijos procedentes del Oriente que formarían los cacicazgos independientes de Tacunga, Mulliambato y Píllaro, Quizapincha y otros; conformando los primeros asentamientos humanos dentro circundantes a la parroquia de Tanicuchí.\r\n\r\nEstos resistieron contra la invasión Inca durante muchos años, pero luego decidieron por negociaciones de índole política, unirse a ellos por el respeto y comprensión con los que fueron tratados; además y de manera singular por los procedimientos de amistad y matrimonios; así fusionados lucharon contra los españoles.\r\n\r\nEl primer vestigio de la conformación de un asentamiento humano en este territorio es recogido por el Padre Juan de Velasco, quien indica que “aproximadamente por el año mil de la Era Cristiana, el Reino de Quito agrupaba cantidad superior a cuarenta provincias”.\r\n\r\nQuien en su muy significativa historia anota además “se halla situado este pequeño Reino al centro de más de cincuenta Provincias o Estados mayores y menores, casi todos independientes, los cuales tenían sus señores particulares que se hacían continuas guerras.”\r\n\r\n“De entre estos estados casi como el de Quito, de acuerdo a la misma fuente, era Latacunga, igual o menor que los cuatro de Imbaya, Puruhá, y Cañar, constituido por diez y seis tribus muy numerosas la mayoría: Aláquez, Callos, Cuzubamba, Mulahaloes, Mulihambatos, Panzaleos, Pilahaloes, Pujilies, Saquisilíes, Sigchos, Tanicuchíes, Tiopullos, Toacasos, Yanaconas, propios Latacungas y el estado independiente de Angamarca.\r\n\r\nEn la época colonial, fue fundada como doctrina cristiana en el año del Señor de 1520 por frailes españoles, un 10 de Agosto con el nombre de “San Lorenzo de Tanicuchí” desde entonces sus fiestas se desarrollan en esa fecha en las que se realiza una serie de actividades folklóricas acompañadas de las ya afamadas corridas de toros que se han dado por siempre.	La parroquia de Tanicuchí conforma parte de una de las 10 parroquias rurales del Cantón Latacunga de la Provincia de Cotopaxi, se ubica a 20 kilómetros al noroccidente de la ciudad de Latacunga, y tiene entre sus poblaciones a Lasso, eje importante por el paso del ferrocarril y la panamericana norte.	Al Norte: Parroquia de Pastocalle,\r\nAl Sur: Parroquia de Guaytacama,\r\nAl Este: Parroquia de Mulaló\r\nAl Oeste: Parroquia de Toacaso	gobiernoparroquialtanicuchi@yahoo.com	03 2701090	0992713953	documentos/TANICUCHI.pdf	2020-12-18 22:59:04.862728-05	5
\.


--
-- TOC entry 3143 (class 0 OID 37965)
-- Dependencies: 237
-- Data for Name: restaurante_restaurante; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.restaurante_restaurante (id, nombre, descripcion, direccion, longitud, latitud, imagen, created_at, parroquia_id) FROM stdin;
2	kfc	zxczxc	21212	-78.6166909	-0.7705516	restaurantes/poalo.jpg	2020-12-11 23:06:27.255464-05	2
\.


--
-- TOC entry 3146 (class 0 OID 38006)
-- Dependencies: 240
-- Data for Name: transporte_transporte; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transporte_transporte (id, nombre, ruta, imagen, observaciones, created_at, parroquia_id) FROM stdin;
1	Buses de transporte	terminal tanicuchi		\N	2020-12-11 23:16:16.411031-05	2
\.


--
-- TOC entry 3113 (class 0 OID 37662)
-- Dependencies: 207
-- Data for Name: usuario_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario_usuario (id, password, last_login, is_superuser, is_staff, is_active, date_joined, first_name, last_name, email, username, direccion, imagen, usuario_admin) FROM stdin;
1	pbkdf2_sha256$180000$HXipUUuaQ29C$oVkWVoDSybGqizzjAQ4rJO80LgyYRqPMLHqDHNUDC4A=	2020-12-18 23:02:56.424538-05	t	t	t	2020-12-10 20:50:02.202262-05	bryan	sandoval	bryan@utc.edu.ec	basisandoval	\N	perfil/turis.jpg	f
3	pbkdf2_sha256$180000$oqdo7PKVJ6C8$6YWWaq7TToU+xp1eSt1fte9nuIR8qGs723ORxeblBfc=	2020-12-19 08:24:59.021858-05	f	f	t	2020-12-10 23:20:59-05	Stalin	Sandoval	stalin@utc.edu.ec	asas	\N		t
5	pbkdf2_sha256$180000$mr2kaqYjbP2Y$D7fDm0uL+V8YDVE0U8ersylNXdwaMw1UQgKs7M+onhw=	2020-12-30 16:21:42.111841-05	f	f	t	2020-12-18 22:52:16-05	Geovany	Casa	geovany@utc.edu.ec	geovany@utc.edu.ec	\N		t
4	pbkdf2_sha256$180000$WIo7g4vfpvCP$LjAENqw00PLqG2AR8ofpqe7onSjcMrSx6aOYvztC8sQ=	\N	f	f	t	2020-12-10 23:21:57-05	Leonardo	Cabrera	leonardo@utc.edu.ec	leonardo	\N		f
\.


--
-- TOC entry 3115 (class 0 OID 37675)
-- Dependencies: 209
-- Data for Name: usuario_usuario_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario_usuario_groups (id, usuario_id, group_id) FROM stdin;
\.


--
-- TOC entry 3117 (class 0 OID 37683)
-- Dependencies: 211
-- Data for Name: usuario_usuario_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario_usuario_user_permissions (id, usuario_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3177 (class 0 OID 0)
-- Dependencies: 218
-- Name: alojamiento_alojamiento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alojamiento_alojamiento_id_seq', 5, true);


--
-- TOC entry 3178 (class 0 OID 0)
-- Dependencies: 220
-- Name: atractivos_culturales_atractivocultural_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.atractivos_culturales_atractivocultural_id_seq', 12, true);


--
-- TOC entry 3179 (class 0 OID 0)
-- Dependencies: 222
-- Name: atractivos_culturales_tipoac_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.atractivos_culturales_tipoac_id_seq', 4, true);


--
-- TOC entry 3180 (class 0 OID 0)
-- Dependencies: 224
-- Name: atractivos_naturales_atractivonatural_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.atractivos_naturales_atractivonatural_id_seq', 15, true);


--
-- TOC entry 3181 (class 0 OID 0)
-- Dependencies: 228
-- Name: atractivos_naturales_imagenesatractivonatural_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.atractivos_naturales_imagenesatractivonatural_id_seq', 3, true);


--
-- TOC entry 3182 (class 0 OID 0)
-- Dependencies: 226
-- Name: atractivos_naturales_tipoan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.atractivos_naturales_tipoan_id_seq', 5, true);


--
-- TOC entry 3183 (class 0 OID 0)
-- Dependencies: 202
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3184 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3185 (class 0 OID 0)
-- Dependencies: 200
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 80, true);


--
-- TOC entry 3186 (class 0 OID 0)
-- Dependencies: 212
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 53, true);


--
-- TOC entry 3187 (class 0 OID 0)
-- Dependencies: 198
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 20, true);


--
-- TOC entry 3188 (class 0 OID 0)
-- Dependencies: 196
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 51, true);


--
-- TOC entry 3189 (class 0 OID 0)
-- Dependencies: 230
-- Name: empresa_empresa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.empresa_empresa_id_seq', 9, true);


--
-- TOC entry 3190 (class 0 OID 0)
-- Dependencies: 232
-- Name: empresa_producto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.empresa_producto_id_seq', 13, true);


--
-- TOC entry 3191 (class 0 OID 0)
-- Dependencies: 234
-- Name: empresa_tipoemp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.empresa_tipoemp_id_seq', 9, true);


--
-- TOC entry 3192 (class 0 OID 0)
-- Dependencies: 214
-- Name: parroquias_imagenesparroquia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parroquias_imagenesparroquia_id_seq', 12, true);


--
-- TOC entry 3193 (class 0 OID 0)
-- Dependencies: 216
-- Name: parroquias_parroquia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parroquias_parroquia_id_seq', 3, true);


--
-- TOC entry 3194 (class 0 OID 0)
-- Dependencies: 236
-- Name: restaurante_restaurante_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.restaurante_restaurante_id_seq', 2, true);


--
-- TOC entry 3195 (class 0 OID 0)
-- Dependencies: 239
-- Name: transporte_transporte_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transporte_transporte_id_seq', 1, true);


--
-- TOC entry 3196 (class 0 OID 0)
-- Dependencies: 208
-- Name: usuario_usuario_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_usuario_groups_id_seq', 1, false);


--
-- TOC entry 3197 (class 0 OID 0)
-- Dependencies: 206
-- Name: usuario_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_usuario_id_seq', 5, true);


--
-- TOC entry 3198 (class 0 OID 0)
-- Dependencies: 210
-- Name: usuario_usuario_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_usuario_user_permissions_id_seq', 1, false);


--
-- TOC entry 2894 (class 2606 OID 37792)
-- Name: alojamiento_alojamiento alojamiento_alojamiento_nombre_3986304a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alojamiento_alojamiento
    ADD CONSTRAINT alojamiento_alojamiento_nombre_3986304a_uniq UNIQUE (nombre);


--
-- TOC entry 2897 (class 2606 OID 37784)
-- Name: alojamiento_alojamiento alojamiento_alojamiento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alojamiento_alojamiento
    ADD CONSTRAINT alojamiento_alojamiento_pkey PRIMARY KEY (id);


--
-- TOC entry 2900 (class 2606 OID 37829)
-- Name: atractivos_culturales_atractivocultural atractivos_culturales_atractivocultural_nombre_284e4559_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atractivos_culturales_atractivocultural
    ADD CONSTRAINT atractivos_culturales_atractivocultural_nombre_284e4559_uniq UNIQUE (nombre);


--
-- TOC entry 2903 (class 2606 OID 37804)
-- Name: atractivos_culturales_atractivocultural atractivos_culturales_atractivocultural_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atractivos_culturales_atractivocultural
    ADD CONSTRAINT atractivos_culturales_atractivocultural_pkey PRIMARY KEY (id);


--
-- TOC entry 2907 (class 2606 OID 37832)
-- Name: atractivos_culturales_tipoac atractivos_culturales_tipoac_nombre_tipo_ac_a032b25e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atractivos_culturales_tipoac
    ADD CONSTRAINT atractivos_culturales_tipoac_nombre_tipo_ac_a032b25e_uniq UNIQUE (nombre_tipo_ac);


--
-- TOC entry 2909 (class 2606 OID 37815)
-- Name: atractivos_culturales_tipoac atractivos_culturales_tipoac_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atractivos_culturales_tipoac
    ADD CONSTRAINT atractivos_culturales_tipoac_pkey PRIMARY KEY (id);


--
-- TOC entry 2912 (class 2606 OID 37883)
-- Name: atractivos_naturales_atractivonatural atractivos_naturales_atractivonatural_nombre_an_e3eeeb0a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atractivos_naturales_atractivonatural
    ADD CONSTRAINT atractivos_naturales_atractivonatural_nombre_an_e3eeeb0a_uniq UNIQUE (nombre);


--
-- TOC entry 2915 (class 2606 OID 37844)
-- Name: atractivos_naturales_atractivonatural atractivos_naturales_atractivonatural_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atractivos_naturales_atractivonatural
    ADD CONSTRAINT atractivos_naturales_atractivonatural_pkey PRIMARY KEY (id);


--
-- TOC entry 2924 (class 2606 OID 37863)
-- Name: atractivos_naturales_imagenesatractivonatural atractivos_naturales_imagenesatractivonatural_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atractivos_naturales_imagenesatractivonatural
    ADD CONSTRAINT atractivos_naturales_imagenesatractivonatural_pkey PRIMARY KEY (id);


--
-- TOC entry 2919 (class 2606 OID 37886)
-- Name: atractivos_naturales_tipoan atractivos_naturales_tipoan_nombre_tipo_an_153285aa_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atractivos_naturales_tipoan
    ADD CONSTRAINT atractivos_naturales_tipoan_nombre_tipo_an_153285aa_uniq UNIQUE (nombre_tipo_an);


--
-- TOC entry 2921 (class 2606 OID 37855)
-- Name: atractivos_naturales_tipoan atractivos_naturales_tipoan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atractivos_naturales_tipoan
    ADD CONSTRAINT atractivos_naturales_tipoan_pkey PRIMARY KEY (id);


--
-- TOC entry 2850 (class 2606 OID 37658)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2855 (class 2606 OID 37644)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2858 (class 2606 OID 37633)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2852 (class 2606 OID 37623)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2845 (class 2606 OID 37635)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2847 (class 2606 OID 37615)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2878 (class 2606 OID 37729)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2840 (class 2606 OID 37607)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2842 (class 2606 OID 37605)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2838 (class 2606 OID 37597)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2951 (class 2606 OID 37990)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2927 (class 2606 OID 37940)
-- Name: empresa_empresa empresa_empresa_nombre_d7b2d976_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresa_empresa
    ADD CONSTRAINT empresa_empresa_nombre_d7b2d976_uniq UNIQUE (nombre);


--
-- TOC entry 2929 (class 2606 OID 37898)
-- Name: empresa_empresa empresa_empresa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresa_empresa
    ADD CONSTRAINT empresa_empresa_pkey PRIMARY KEY (id);


--
-- TOC entry 2934 (class 2606 OID 37943)
-- Name: empresa_producto empresa_producto_nombre_a3a7d660_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresa_producto
    ADD CONSTRAINT empresa_producto_nombre_a3a7d660_uniq UNIQUE (nombre);


--
-- TOC entry 2936 (class 2606 OID 37909)
-- Name: empresa_producto empresa_producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresa_producto
    ADD CONSTRAINT empresa_producto_pkey PRIMARY KEY (id);


--
-- TOC entry 2939 (class 2606 OID 37946)
-- Name: empresa_tipoemp empresa_tipoemp_nombre_067d5fb3_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresa_tipoemp
    ADD CONSTRAINT empresa_tipoemp_nombre_067d5fb3_uniq UNIQUE (nombre);


--
-- TOC entry 2942 (class 2606 OID 37920)
-- Name: empresa_tipoemp empresa_tipoemp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresa_tipoemp
    ADD CONSTRAINT empresa_tipoemp_pkey PRIMARY KEY (id);


--
-- TOC entry 2882 (class 2606 OID 37759)
-- Name: parroquias_imagenesparroquia parroquias_imagenesparroquia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parroquias_imagenesparroquia
    ADD CONSTRAINT parroquias_imagenesparroquia_pkey PRIMARY KEY (id);


--
-- TOC entry 2886 (class 2606 OID 37961)
-- Name: parroquias_parroquia parroquias_parroquia_nombre_parr_e5b73ead_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parroquias_parroquia
    ADD CONSTRAINT parroquias_parroquia_nombre_parr_e5b73ead_uniq UNIQUE (nombre_parr);


--
-- TOC entry 2888 (class 2606 OID 37770)
-- Name: parroquias_parroquia parroquias_parroquia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parroquias_parroquia
    ADD CONSTRAINT parroquias_parroquia_pkey PRIMARY KEY (id);


--
-- TOC entry 2891 (class 2606 OID 37772)
-- Name: parroquias_parroquia parroquias_parroquia_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parroquias_parroquia
    ADD CONSTRAINT parroquias_parroquia_slug_key UNIQUE (slug);


--
-- TOC entry 2945 (class 2606 OID 37981)
-- Name: restaurante_restaurante restaurante_restaurante_nombre_11acabed_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.restaurante_restaurante
    ADD CONSTRAINT restaurante_restaurante_nombre_11acabed_uniq UNIQUE (nombre);


--
-- TOC entry 2948 (class 2606 OID 37973)
-- Name: restaurante_restaurante restaurante_restaurante_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.restaurante_restaurante
    ADD CONSTRAINT restaurante_restaurante_pkey PRIMARY KEY (id);


--
-- TOC entry 2955 (class 2606 OID 38031)
-- Name: transporte_transporte transporte_transporte_nombre_22e86a33_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transporte_transporte
    ADD CONSTRAINT transporte_transporte_nombre_22e86a33_uniq UNIQUE (nombre);


--
-- TOC entry 2958 (class 2606 OID 38014)
-- Name: transporte_transporte transporte_transporte_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transporte_transporte
    ADD CONSTRAINT transporte_transporte_pkey PRIMARY KEY (id);


--
-- TOC entry 2861 (class 2606 OID 37672)
-- Name: usuario_usuario usuario_usuario_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_usuario
    ADD CONSTRAINT usuario_usuario_email_key UNIQUE (email);


--
-- TOC entry 2866 (class 2606 OID 37680)
-- Name: usuario_usuario_groups usuario_usuario_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_usuario_groups
    ADD CONSTRAINT usuario_usuario_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2869 (class 2606 OID 37691)
-- Name: usuario_usuario_groups usuario_usuario_groups_usuario_id_group_id_a4cfb0b8_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_usuario_groups
    ADD CONSTRAINT usuario_usuario_groups_usuario_id_group_id_a4cfb0b8_uniq UNIQUE (usuario_id, group_id);


--
-- TOC entry 2863 (class 2606 OID 37670)
-- Name: usuario_usuario usuario_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_usuario
    ADD CONSTRAINT usuario_usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 2871 (class 2606 OID 37705)
-- Name: usuario_usuario_user_permissions usuario_usuario_user_per_usuario_id_permission_id_c0a85055_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_usuario_user_permissions
    ADD CONSTRAINT usuario_usuario_user_per_usuario_id_permission_id_c0a85055_uniq UNIQUE (usuario_id, permission_id);


--
-- TOC entry 2874 (class 2606 OID 37688)
-- Name: usuario_usuario_user_permissions usuario_usuario_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_usuario_user_permissions
    ADD CONSTRAINT usuario_usuario_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2892 (class 1259 OID 37793)
-- Name: alojamiento_alojamiento_nombre_3986304a_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alojamiento_alojamiento_nombre_3986304a_like ON public.alojamiento_alojamiento USING btree (nombre varchar_pattern_ops);


--
-- TOC entry 2895 (class 1259 OID 37790)
-- Name: alojamiento_alojamiento_parroquia_id_cc702466; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alojamiento_alojamiento_parroquia_id_cc702466 ON public.alojamiento_alojamiento USING btree (parroquia_id);


--
-- TOC entry 2898 (class 1259 OID 37830)
-- Name: atractivos_culturales_atractivocultural_nombre_284e4559_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX atractivos_culturales_atractivocultural_nombre_284e4559_like ON public.atractivos_culturales_atractivocultural USING btree (nombre varchar_pattern_ops);


--
-- TOC entry 2901 (class 1259 OID 37826)
-- Name: atractivos_culturales_atractivocultural_parroquia_id_0c968bb0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX atractivos_culturales_atractivocultural_parroquia_id_0c968bb0 ON public.atractivos_culturales_atractivocultural USING btree (parroquia_id);


--
-- TOC entry 2904 (class 1259 OID 37827)
-- Name: atractivos_culturales_atractivocultural_tipo_id_id_a382c601; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX atractivos_culturales_atractivocultural_tipo_id_id_a382c601 ON public.atractivos_culturales_atractivocultural USING btree (tipo_id_id);


--
-- TOC entry 2905 (class 1259 OID 37833)
-- Name: atractivos_culturales_tipoac_nombre_tipo_ac_a032b25e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX atractivos_culturales_tipoac_nombre_tipo_ac_a032b25e_like ON public.atractivos_culturales_tipoac USING btree (nombre_tipo_ac varchar_pattern_ops);


--
-- TOC entry 2910 (class 1259 OID 37884)
-- Name: atractivos_naturales_atractivonatural_nombre_an_e3eeeb0a_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX atractivos_naturales_atractivonatural_nombre_an_e3eeeb0a_like ON public.atractivos_naturales_atractivonatural USING btree (nombre varchar_pattern_ops);


--
-- TOC entry 2913 (class 1259 OID 37880)
-- Name: atractivos_naturales_atractivonatural_parroquia_id_ec0625b7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX atractivos_naturales_atractivonatural_parroquia_id_ec0625b7 ON public.atractivos_naturales_atractivonatural USING btree (parroquia_id);


--
-- TOC entry 2916 (class 1259 OID 37881)
-- Name: atractivos_naturales_atractivonatural_tipo_id_id_0aed6625; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX atractivos_naturales_atractivonatural_tipo_id_id_0aed6625 ON public.atractivos_naturales_atractivonatural USING btree (tipo_id_id);


--
-- TOC entry 2922 (class 1259 OID 37869)
-- Name: atractivos_naturales_image_atractivo_natural_id_ba496c95; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX atractivos_naturales_image_atractivo_natural_id_ba496c95 ON public.atractivos_naturales_imagenesatractivonatural USING btree (atractivo_natural_id);


--
-- TOC entry 2917 (class 1259 OID 37887)
-- Name: atractivos_naturales_tipoan_nombre_tipo_an_153285aa_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX atractivos_naturales_tipoan_nombre_tipo_an_153285aa_like ON public.atractivos_naturales_tipoan USING btree (nombre_tipo_an varchar_pattern_ops);


--
-- TOC entry 2848 (class 1259 OID 37659)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2853 (class 1259 OID 37655)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2856 (class 1259 OID 37656)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2843 (class 1259 OID 37641)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2876 (class 1259 OID 37740)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2879 (class 1259 OID 37741)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2949 (class 1259 OID 37992)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2952 (class 1259 OID 37991)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2925 (class 1259 OID 37941)
-- Name: empresa_empresa_nombre_d7b2d976_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX empresa_empresa_nombre_d7b2d976_like ON public.empresa_empresa USING btree (nombre varchar_pattern_ops);


--
-- TOC entry 2930 (class 1259 OID 37938)
-- Name: empresa_empresa_tipo_id_id_fc0fb0d7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX empresa_empresa_tipo_id_id_fc0fb0d7 ON public.empresa_empresa USING btree (tipo_id_id);


--
-- TOC entry 2931 (class 1259 OID 37937)
-- Name: empresa_producto_empresa_id_4d96b15b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX empresa_producto_empresa_id_4d96b15b ON public.empresa_producto USING btree (empresa_id);


--
-- TOC entry 2932 (class 1259 OID 37944)
-- Name: empresa_producto_nombre_a3a7d660_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX empresa_producto_nombre_a3a7d660_like ON public.empresa_producto USING btree (nombre varchar_pattern_ops);


--
-- TOC entry 2937 (class 1259 OID 37947)
-- Name: empresa_tipoemp_nombre_067d5fb3_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX empresa_tipoemp_nombre_067d5fb3_like ON public.empresa_tipoemp USING btree (nombre varchar_pattern_ops);


--
-- TOC entry 2940 (class 1259 OID 37936)
-- Name: empresa_tipoemp_parroquia_id_567019ed; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX empresa_tipoemp_parroquia_id_567019ed ON public.empresa_tipoemp USING btree (parroquia_id);


--
-- TOC entry 2880 (class 1259 OID 37959)
-- Name: parroquias_imagenesparroquia_parroquia_id_421570eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX parroquias_imagenesparroquia_parroquia_id_421570eb ON public.parroquias_imagenesparroquia USING btree (parroquia_id);


--
-- TOC entry 2883 (class 1259 OID 37958)
-- Name: parroquias_parroquia_administrador_id_7d749f0e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX parroquias_parroquia_administrador_id_7d749f0e ON public.parroquias_parroquia USING btree (administrador_id);


--
-- TOC entry 2884 (class 1259 OID 37962)
-- Name: parroquias_parroquia_nombre_parr_e5b73ead_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX parroquias_parroquia_nombre_parr_e5b73ead_like ON public.parroquias_parroquia USING btree (nombre_parr varchar_pattern_ops);


--
-- TOC entry 2889 (class 1259 OID 37773)
-- Name: parroquias_parroquia_slug_d8d08f87_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX parroquias_parroquia_slug_d8d08f87_like ON public.parroquias_parroquia USING btree (slug varchar_pattern_ops);


--
-- TOC entry 2943 (class 1259 OID 37982)
-- Name: restaurante_restaurante_nombre_11acabed_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX restaurante_restaurante_nombre_11acabed_like ON public.restaurante_restaurante USING btree (nombre varchar_pattern_ops);


--
-- TOC entry 2946 (class 1259 OID 37979)
-- Name: restaurante_restaurante_parroquia_id_90907d43; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX restaurante_restaurante_parroquia_id_90907d43 ON public.restaurante_restaurante USING btree (parroquia_id);


--
-- TOC entry 2953 (class 1259 OID 38032)
-- Name: transporte_transporte_nombre_22e86a33_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX transporte_transporte_nombre_22e86a33_like ON public.transporte_transporte USING btree (nombre varchar_pattern_ops);


--
-- TOC entry 2956 (class 1259 OID 38025)
-- Name: transporte_transporte_parroquia_id_1f2aed16; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX transporte_transporte_parroquia_id_1f2aed16 ON public.transporte_transporte USING btree (parroquia_id);


--
-- TOC entry 2859 (class 1259 OID 37689)
-- Name: usuario_usuario_email_a8fcd603_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX usuario_usuario_email_a8fcd603_like ON public.usuario_usuario USING btree (email varchar_pattern_ops);


--
-- TOC entry 2864 (class 1259 OID 37703)
-- Name: usuario_usuario_groups_group_id_b9c090f8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX usuario_usuario_groups_group_id_b9c090f8 ON public.usuario_usuario_groups USING btree (group_id);


--
-- TOC entry 2867 (class 1259 OID 37702)
-- Name: usuario_usuario_groups_usuario_id_62de76a1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX usuario_usuario_groups_usuario_id_62de76a1 ON public.usuario_usuario_groups USING btree (usuario_id);


--
-- TOC entry 2872 (class 1259 OID 37717)
-- Name: usuario_usuario_user_permissions_permission_id_5cad0a4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX usuario_usuario_user_permissions_permission_id_5cad0a4b ON public.usuario_usuario_user_permissions USING btree (permission_id);


--
-- TOC entry 2875 (class 1259 OID 37716)
-- Name: usuario_usuario_user_permissions_usuario_id_5969a193; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX usuario_usuario_user_permissions_usuario_id_5969a193 ON public.usuario_usuario_user_permissions USING btree (usuario_id);


--
-- TOC entry 2970 (class 2606 OID 37785)
-- Name: alojamiento_alojamiento alojamiento_alojamie_parroquia_id_cc702466_fk_parroquia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alojamiento_alojamiento
    ADD CONSTRAINT alojamiento_alojamie_parroquia_id_cc702466_fk_parroquia FOREIGN KEY (parroquia_id) REFERENCES public.parroquias_parroquia(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2971 (class 2606 OID 37816)
-- Name: atractivos_culturales_atractivocultural atractivos_culturale_parroquia_id_0c968bb0_fk_parroquia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atractivos_culturales_atractivocultural
    ADD CONSTRAINT atractivos_culturale_parroquia_id_0c968bb0_fk_parroquia FOREIGN KEY (parroquia_id) REFERENCES public.parroquias_parroquia(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2972 (class 2606 OID 37821)
-- Name: atractivos_culturales_atractivocultural atractivos_culturale_tipo_id_id_a382c601_fk_atractivo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atractivos_culturales_atractivocultural
    ADD CONSTRAINT atractivos_culturale_tipo_id_id_a382c601_fk_atractivo FOREIGN KEY (tipo_id_id) REFERENCES public.atractivos_culturales_tipoac(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2975 (class 2606 OID 37864)
-- Name: atractivos_naturales_imagenesatractivonatural atractivos_naturales_atractivo_natural_id_ba496c95_fk_atractivo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atractivos_naturales_imagenesatractivonatural
    ADD CONSTRAINT atractivos_naturales_atractivo_natural_id_ba496c95_fk_atractivo FOREIGN KEY (atractivo_natural_id) REFERENCES public.atractivos_naturales_atractivonatural(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2973 (class 2606 OID 37870)
-- Name: atractivos_naturales_atractivonatural atractivos_naturales_parroquia_id_ec0625b7_fk_parroquia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atractivos_naturales_atractivonatural
    ADD CONSTRAINT atractivos_naturales_parroquia_id_ec0625b7_fk_parroquia FOREIGN KEY (parroquia_id) REFERENCES public.parroquias_parroquia(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2974 (class 2606 OID 37875)
-- Name: atractivos_naturales_atractivonatural atractivos_naturales_tipo_id_id_0aed6625_fk_atractivo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.atractivos_naturales_atractivonatural
    ADD CONSTRAINT atractivos_naturales_tipo_id_id_0aed6625_fk_atractivo FOREIGN KEY (tipo_id_id) REFERENCES public.atractivos_naturales_tipoan(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2961 (class 2606 OID 37650)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2960 (class 2606 OID 37645)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2959 (class 2606 OID 37636)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2966 (class 2606 OID 37730)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2967 (class 2606 OID 37747)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_usuario_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_usuario_usuario_id FOREIGN KEY (user_id) REFERENCES public.usuario_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2976 (class 2606 OID 37931)
-- Name: empresa_empresa empresa_empresa_tipo_id_id_fc0fb0d7_fk_empresa_tipoemp_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresa_empresa
    ADD CONSTRAINT empresa_empresa_tipo_id_id_fc0fb0d7_fk_empresa_tipoemp_id FOREIGN KEY (tipo_id_id) REFERENCES public.empresa_tipoemp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2977 (class 2606 OID 37926)
-- Name: empresa_producto empresa_producto_empresa_id_4d96b15b_fk_empresa_empresa_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresa_producto
    ADD CONSTRAINT empresa_producto_empresa_id_4d96b15b_fk_empresa_empresa_id FOREIGN KEY (empresa_id) REFERENCES public.empresa_empresa(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2978 (class 2606 OID 37921)
-- Name: empresa_tipoemp empresa_tipoemp_parroquia_id_567019ed_fk_parroquia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresa_tipoemp
    ADD CONSTRAINT empresa_tipoemp_parroquia_id_567019ed_fk_parroquia FOREIGN KEY (parroquia_id) REFERENCES public.parroquias_parroquia(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2968 (class 2606 OID 37953)
-- Name: parroquias_imagenesparroquia parroquias_imagenesp_parroquia_id_421570eb_fk_parroquia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parroquias_imagenesparroquia
    ADD CONSTRAINT parroquias_imagenesp_parroquia_id_421570eb_fk_parroquia FOREIGN KEY (parroquia_id) REFERENCES public.parroquias_parroquia(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2969 (class 2606 OID 37948)
-- Name: parroquias_parroquia parroquias_parroquia_administrador_id_7d749f0e_fk_usuario_u; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parroquias_parroquia
    ADD CONSTRAINT parroquias_parroquia_administrador_id_7d749f0e_fk_usuario_u FOREIGN KEY (administrador_id) REFERENCES public.usuario_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2979 (class 2606 OID 37974)
-- Name: restaurante_restaurante restaurante_restaura_parroquia_id_90907d43_fk_parroquia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.restaurante_restaurante
    ADD CONSTRAINT restaurante_restaura_parroquia_id_90907d43_fk_parroquia FOREIGN KEY (parroquia_id) REFERENCES public.parroquias_parroquia(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2980 (class 2606 OID 38015)
-- Name: transporte_transporte transporte_transport_parroquia_id_1f2aed16_fk_parroquia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transporte_transporte
    ADD CONSTRAINT transporte_transport_parroquia_id_1f2aed16_fk_parroquia FOREIGN KEY (parroquia_id) REFERENCES public.parroquias_parroquia(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2962 (class 2606 OID 37692)
-- Name: usuario_usuario_groups usuario_usuario_grou_usuario_id_62de76a1_fk_usuario_u; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_usuario_groups
    ADD CONSTRAINT usuario_usuario_grou_usuario_id_62de76a1_fk_usuario_u FOREIGN KEY (usuario_id) REFERENCES public.usuario_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2963 (class 2606 OID 37697)
-- Name: usuario_usuario_groups usuario_usuario_groups_group_id_b9c090f8_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_usuario_groups
    ADD CONSTRAINT usuario_usuario_groups_group_id_b9c090f8_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2965 (class 2606 OID 37711)
-- Name: usuario_usuario_user_permissions usuario_usuario_user_permission_id_5cad0a4b_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_usuario_user_permissions
    ADD CONSTRAINT usuario_usuario_user_permission_id_5cad0a4b_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2964 (class 2606 OID 37706)
-- Name: usuario_usuario_user_permissions usuario_usuario_user_usuario_id_5969a193_fk_usuario_u; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_usuario_user_permissions
    ADD CONSTRAINT usuario_usuario_user_usuario_id_5969a193_fk_usuario_u FOREIGN KEY (usuario_id) REFERENCES public.usuario_usuario(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2020-12-30 17:07:39

--
-- PostgreSQL database dump complete
--

