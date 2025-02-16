--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: combine; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.combine (
    star_id integer,
    planet_id integer,
    galaxy_id integer,
    moon_id integer,
    combine_id integer NOT NULL,
    name character varying(2),
    demo text NOT NULL
);


ALTER TABLE public.combine OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    no_of_planets bigint NOT NULL,
    has_water boolean NOT NULL,
    galaxy_type text,
    redshift integer
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
    name character varying(12),
    radius numeric,
    temperature integer NOT NULL,
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
    name character varying(29) NOT NULL,
    has_water boolean,
    shape text,
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
    name character varying(20),
    size numeric NOT NULL,
    galaxy_id integer,
    distance integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_distance_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_distance_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_distance_seq OWNER TO freecodecamp;

--
-- Name: star_distance_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_distance_seq OWNED BY public.star.distance;


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
-- Name: star distance; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN distance SET DEFAULT nextval('public.star_distance_seq'::regclass);


--
-- Data for Name: combine; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.combine VALUES (NULL, NULL, NULL, NULL, 121, NULL, 'qwer');
INSERT INTO public.combine VALUES (NULL, NULL, NULL, NULL, 111, NULL, 'qwersd');
INSERT INTO public.combine VALUES (NULL, NULL, NULL, NULL, 112, NULL, 'q222222222222222wersd');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 80000000000, true, 'barred spiral galaxy', NULL);
INSERT INTO public.galaxy VALUES (3, 'Black Eye', 0, true, 'spiral galaxy', NULL);
INSERT INTO public.galaxy VALUES (4, 'Pinwheel', 0, false, 'spiral galaxy', NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 5000000000, true, 'barred spiral galaxy', NULL);
INSERT INTO public.galaxy VALUES (5, 'MyOwn', 90, true, 'Curvy ecllipse', 9089809);
INSERT INTO public.galaxy VALUES (6, 'Demo', 9084, false, 'rectangle', 998);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (16, 'Phobos', 4441.002, -2344, 2);
INSERT INTO public.moon VALUES (17, 'Europa', 1.23, 3433, 2);
INSERT INTO public.moon VALUES (18, 'Deimos', 6, -908, 14);
INSERT INTO public.moon VALUES (19, 'gnymede', 66, -89, 15);
INSERT INTO public.moon VALUES (20, 'Himalia', 1025, 22, 16);
INSERT INTO public.moon VALUES (21, 'Janus', 95, -9098, 1);
INSERT INTO public.moon VALUES (22, 'Mimas', 90, 8989, 12);
INSERT INTO public.moon VALUES (23, 'tethys', 90909, -6785, 1);
INSERT INTO public.moon VALUES (24, 'Dione', 560, -99, 14);
INSERT INTO public.moon VALUES (25, 'Pandora', 89, -99, 13);
INSERT INTO public.moon VALUES (31, 'Janus 24', 925, -92098, 1);
INSERT INTO public.moon VALUES (32, 'Mim 342s', 90, 899, 12);
INSERT INTO public.moon VALUES (33, 'ttys', 9, -675, 1);
INSERT INTO public.moon VALUES (34, 'Dion 343e', 5260, -929, 11);
INSERT INTO public.moon VALUES (35, 'Pand2 o2ra', 892, -949, 13);
INSERT INTO public.moon VALUES (36, 'Janus 24 3', 925, -92098, 1);
INSERT INTO public.moon VALUES (37, 'M im 342s', 90, 899, 12);
INSERT INTO public.moon VALUES (38, 'tty s', 9, -675, 1);
INSERT INTO public.moon VALUES (39, 'Dion3e', 5260, -929, 11);
INSERT INTO public.moon VALUES (40, 'Pand2a', 892, -949, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Nu2 Canis Majoris b', false, NULL, 2);
INSERT INTO public.planet VALUES (7, 'planet alpha', true, 'ecllipse', 3);
INSERT INTO public.planet VALUES (8, 'planet gamma', false, 'almost sphere', 6);
INSERT INTO public.planet VALUES (9, 'planet x', false, 'circle', 4);
INSERT INTO public.planet VALUES (10, 'planet Abiita', false, 'spherical', 3);
INSERT INTO public.planet VALUES (11, 'Planet 1', true, 'Not Identified', 2);
INSERT INTO public.planet VALUES (13, 'planet x', false, 'circleless', 4);
INSERT INTO public.planet VALUES (14, 'planet Abiitsa', false, 'spherical almond', 3);
INSERT INTO public.planet VALUES (15, 'Planet1 1', true, 'Nt Identified', 2);
INSERT INTO public.planet VALUES (1, 'venus', false, 'sphere', 5);
INSERT INTO public.planet VALUES (6, 'Earth', true, ' less sphere', 5);
INSERT INTO public.planet VALUES (16, 'Plandet 2', false, ' Identified', 5);
INSERT INTO public.planet VALUES (12, 'Plant 2', false, 'not Identified', 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpheratz', 1878660.909, 2, 1);
INSERT INTO public.star VALUES (2, 'Mirach', 1878660.909, 2, 899898);
INSERT INTO public.star VALUES (3, 'Sunakio', 18790, 3, 899899);
INSERT INTO public.star VALUES (4, 'Canis Major', 908098, 1, 98989898);
INSERT INTO public.star VALUES (5, 'Antares', 98987676, 1, 7854444);
INSERT INTO public.star VALUES (6, 'Auriga', 8498.9008, 4, 8985098);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_distance_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_distance_seq', 1, true);


--
-- Name: combine combine_demo_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.combine
    ADD CONSTRAINT combine_demo_key UNIQUE (demo);


--
-- Name: combine combine_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.combine
    ADD CONSTRAINT combine_pkey PRIMARY KEY (combine_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_redshift_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_redshift_key UNIQUE (redshift);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


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
-- Name: planet planet_shape_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_shape_key UNIQUE (shape);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name UNIQUE (star_id);


--
-- Name: combine combine_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.combine
    ADD CONSTRAINT combine_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: combine combine_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.combine
    ADD CONSTRAINT combine_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: combine combine_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.combine
    ADD CONSTRAINT combine_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: combine combine_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.combine
    ADD CONSTRAINT combine_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

