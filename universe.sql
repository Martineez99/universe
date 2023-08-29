--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    year integer,
    people integer,
    water integer NOT NULL,
    polution integer,
    animals integer,
    name character varying(30) NOT NULL
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planets_number integer,
    stars_number integer NOT NULL,
    radio numeric,
    description text,
    alive boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    size integer NOT NULL,
    radio numeric,
    description text,
    alive boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    size integer NOT NULL,
    radio numeric,
    description text,
    alive boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    size integer NOT NULL,
    radio numeric,
    description text,
    alive boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1990, 21, 42459, 212328719, 39230, 'pedriin');
INSERT INTO public.earth VALUES (1995, 212, 342459, 2328719, 39230, 'sanchez');
INSERT INTO public.earth VALUES (2000, 212, 342459, 23287129, 392320, 'rodelgo');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'orion', 5, 5, 2000, 'very good', NULL);
INSERT INTO public.galaxy VALUES (2, 'sypher', 7, 7, 7000, 'very good and warm', true);
INSERT INTO public.galaxy VALUES (3, 'william', 9, 9, 9000, 'far away galaxy', false);
INSERT INTO public.galaxy VALUES (4, 'andromeda', 19, 19, 19000, 'andromeda away galaxy', false);
INSERT INTO public.galaxy VALUES (5, 'jose manuel', 139, 419, 129000, ' away galaxy', false);
INSERT INTO public.galaxy VALUES (6, 'fonsuu', 1339, 4139, 1290030, ' fonsuu galaxy', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'pablo', 42459, 328719, 39230, 'red planet moon ', true, 1);
INSERT INTO public.moon VALUES (2, 'pedro', 42459, 328719, 39230, 'blue planet moon ', true, 2);
INSERT INTO public.moon VALUES (3, 'peito', 42459, 328719, 39230, 'green planet moon ', true, 3);
INSERT INTO public.moon VALUES (4, 'willy', 42459, 328719, 39230, 'vegeta  moon ', true, 3);
INSERT INTO public.moon VALUES (5, 'true willy', 42459, 328719, 39230, 'true vegeta  moon ', true, 4);
INSERT INTO public.moon VALUES (6, 'la luna de marte', 42459, 328719, 39230, 'marte  moon ', true, 5);
INSERT INTO public.moon VALUES (7, 'quevedin', 42459, 328719, 39230, 'columbia moon ', true, 6);
INSERT INTO public.moon VALUES (8, 'abascal', 42459, 328719, 39230, 'vox moon ', true, 7);
INSERT INTO public.moon VALUES (9, 'xpeke', 2459, 28719, 3230, 'origen moon ', true, 8);
INSERT INTO public.moon VALUES (10, 'batistuta', 2459, 282719, 323120, 'valdano  moon ', true, 9);
INSERT INTO public.moon VALUES (11, 'roma', 24159, 2822719, 32312310, 'julio cesar  moon ', true, 10);
INSERT INTO public.moon VALUES (12, 'nickynicole', 24159, 2822719, 323123110, 'trueno  moon ', true, 11);
INSERT INTO public.moon VALUES (13, 'mano de dios', 24159, 282271, 3233110, 'diegooo  moon ', true, 12);
INSERT INTO public.moon VALUES (14, 'la tota', 24159, 282271, 3233110, 'la tota  moon ', true, 12);
INSERT INTO public.moon VALUES (15, 'mars x', 24159, 282271, 3233110, ' marsx  moon ', true, 5);
INSERT INTO public.moon VALUES (16, 'espinosa', 24159, 282271, 3233110, ' de los monteros moon ', true, 7);
INSERT INTO public.moon VALUES (17, 'cyanide', 24159, 282271, 3233110, ' cyanide moon ', true, 8);
INSERT INTO public.moon VALUES (18, 'fabrizio', 24159, 282271, 3233110, ' fabrizio moon ', true, 10);
INSERT INTO public.moon VALUES (19, 'blanca', 24159, 282271, 3233110, ' la blanca moon ', true, 12);
INSERT INTO public.moon VALUES (20, 'weedo', 24159, 282271, 3233110, ' green  moon ', true, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'green', 42459, 365879, 39000, 'green planet ', true, 3);
INSERT INTO public.planet VALUES (2, 'blue', 424559, 3658719, 390030, 'blue planet ', true, 2);
INSERT INTO public.planet VALUES (3, 'red', 4245259, 36528719, 3900230, 'red planet ', true, 1);
INSERT INTO public.planet VALUES (4, 'vegeta', 4245259, 36528719, 3900230, 'vegeta planet ', true, 5);
INSERT INTO public.planet VALUES (5, 'marte', 4245259, 36528719, 3900230, 'marte planet ', true, 4);
INSERT INTO public.planet VALUES (6, 'columbia', 4245259, 36528719, 3900230, 'columbia planet ', true, 6);
INSERT INTO public.planet VALUES (7, 'vox', 4245259, 36528719, 3900230, 'vox planet ', true, 2);
INSERT INTO public.planet VALUES (8, 'origen', 4245259, 36528719, 3900230, 'origen planet ', true, 1);
INSERT INTO public.planet VALUES (9, 'valdano', 4245259, 36528719, 3900230, 'valdano planet ', true, 4);
INSERT INTO public.planet VALUES (10, 'julio cesar', 4245259, 36528719, 3900230, 'julio cesar planet ', true, 5);
INSERT INTO public.planet VALUES (11, 'trueno', 4245259, 36528719, 3900230, 'trueno planet ', true, 2);
INSERT INTO public.planet VALUES (12, 'diego armando', 4245259, 36528719, 3900230, 'maradona planet ', true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'red', 4459, 365879, 9000, 'red planet ', false, 1);
INSERT INTO public.star VALUES (2, 'blue', 44459, 2365879, 39000, 'blue star ', false, 2);
INSERT INTO public.star VALUES (3, 'green', 442459, 23365879, 391000, 'green star ', false, 3);
INSERT INTO public.star VALUES (4, 'ESTRELLA', 44245932, 223365879, 3910030, 'estrella de josema galaxy star ', true, 5);
INSERT INTO public.star VALUES (5, 'MADRE de rubiales', 44245932, 223365879, 3910030, 'estrella madre de rubiales ', true, 3);
INSERT INTO public.star VALUES (6, 'santi cimadevilla', 44245932, 223365879, 3910030, 'no prguntes ', true, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: earth unique_name_earth; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT unique_name_earth UNIQUE (name);


--
-- Name: galaxy unique_name_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name_galaxy UNIQUE (name);


--
-- Name: planet unique_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_planet UNIQUE (name);


--
-- Name: star unique_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_star UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

