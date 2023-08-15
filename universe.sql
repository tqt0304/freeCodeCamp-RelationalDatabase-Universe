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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    galaxy_types character varying(30),
    description text,
    diameter integer NOT NULL
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
-- Name: human_satellites; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.human_satellites (
    human_satellites_id integer NOT NULL,
    name character varying(30) NOT NULL,
    years_on_space integer
);


ALTER TABLE public.human_satellites OWNER TO freecodecamp;

--
-- Name: human_satellites_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.human_satellites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.human_satellites_id_seq OWNER TO freecodecamp;

--
-- Name: human_satellites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.human_satellites_id_seq OWNED BY public.human_satellites.human_satellites_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    discovery_year integer,
    year_announced integer,
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
    inside_solarsystem boolean,
    discovery_year integer,
    has_life boolean,
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
    name character varying(30),
    distance_from_earth numeric(4,2) NOT NULL,
    galaxy_id integer,
    discovery_year integer
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
-- Name: human_satellites human_satellites_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human_satellites ALTER COLUMN human_satellites_id SET DEFAULT nextval('public.human_satellites_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 'Our galaxy', 100000);
INSERT INTO public.galaxy VALUES (2, 'LMC', 'Spiral', 'Large Magellanic Cloud', 14000);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 'Spiral', 'Will collide with Milky Way', 220000);
INSERT INTO public.galaxy VALUES (4, 'Cigar', 'Irregular', 'Nicotine', 37000);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 'Spiral', 'Happy', 170000);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'Spiral', 'Beer', 50000);


--
-- Data for Name: human_satellites; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.human_satellites VALUES (1, 'A1', 20);
INSERT INTO public.human_satellites VALUES (2, 'A2', 15);
INSERT INTO public.human_satellites VALUES (3, 'A3', 55);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'A', 1900, 1901, 1);
INSERT INTO public.moon VALUES (2, 'B', 1900, 1901, 2);
INSERT INTO public.moon VALUES (3, 'C', 1900, 1901, 3);
INSERT INTO public.moon VALUES (4, 'D', 1900, 1901, 4);
INSERT INTO public.moon VALUES (5, 'E', 1900, 1901, 5);
INSERT INTO public.moon VALUES (6, 'F', 1900, 1901, 6);
INSERT INTO public.moon VALUES (7, 'G', 1900, 1901, 7);
INSERT INTO public.moon VALUES (8, 'H', 1900, 1901, 8);
INSERT INTO public.moon VALUES (9, 'I', 1900, 1901, 9);
INSERT INTO public.moon VALUES (10, 'J', 1900, 1901, 10);
INSERT INTO public.moon VALUES (11, 'K', 1900, 1901, 11);
INSERT INTO public.moon VALUES (12, 'L', 1900, 1901, 12);
INSERT INTO public.moon VALUES (13, 'M', 1900, 1901, 1);
INSERT INTO public.moon VALUES (14, 'N', 1900, 1901, 2);
INSERT INTO public.moon VALUES (15, 'O', 1900, 1901, 3);
INSERT INTO public.moon VALUES (16, 'P', 1900, 1901, 4);
INSERT INTO public.moon VALUES (17, 'Q', 1900, 1901, 5);
INSERT INTO public.moon VALUES (18, 'R', 1900, 1901, 6);
INSERT INTO public.moon VALUES (19, 'S', 1900, 1901, 7);
INSERT INTO public.moon VALUES (20, 'THY', 1900, 1901, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, -1, true, 1);
INSERT INTO public.planet VALUES (2, 'Ear', true, -1, true, 1);
INSERT INTO public.planet VALUES (3, 'Ea', true, -1, true, 1);
INSERT INTO public.planet VALUES (4, 'E', true, -1, true, 1);
INSERT INTO public.planet VALUES (5, 'ABC', false, 100, true, 1);
INSERT INTO public.planet VALUES (6, 'SABC', false, 100, true, 1);
INSERT INTO public.planet VALUES (7, 'SABDC', false, 100, true, 1);
INSERT INTO public.planet VALUES (8, 'BDC', false, 100, true, 1);
INSERT INTO public.planet VALUES (9, 'BDCSD', false, 100, true, 1);
INSERT INTO public.planet VALUES (10, 'BD', false, 100, true, 1);
INSERT INTO public.planet VALUES (11, 'BAAD', false, 100, true, 2);
INSERT INTO public.planet VALUES (12, 'BAADASS', false, 1001, false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Proxima Centauri', 4.24, 1, 1915);
INSERT INTO public.star VALUES (2, 'Star 2', 4.52, 2, 1904);
INSERT INTO public.star VALUES (3, 'Star 3', 4.12, 2, 1914);
INSERT INTO public.star VALUES (4, 'Star 4', 5.51, 1, 1964);
INSERT INTO public.star VALUES (5, 'Star 5', 2.04, 1, 2004);
INSERT INTO public.star VALUES (6, 'Star 6', 2.03, 3, 2000);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: human_satellites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.human_satellites_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: human_satellites human_satellites_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human_satellites
    ADD CONSTRAINT human_satellites_name_key UNIQUE (name);


--
-- Name: human_satellites human_satellites_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human_satellites
    ADD CONSTRAINT human_satellites_pkey PRIMARY KEY (human_satellites_id);


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
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: star unique_name1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name1 UNIQUE (name);


--
-- Name: planet unique_name2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name2 UNIQUE (name);


--
-- Name: moon unique_name3; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name3 UNIQUE (name);


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

