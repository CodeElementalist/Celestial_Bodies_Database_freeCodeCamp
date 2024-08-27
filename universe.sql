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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    type text,
    diameter_in_lightyears integer
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
-- Name: lifeform; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.lifeform (
    lifeform_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_edible boolean,
    planet_id integer
);


ALTER TABLE public.lifeform OWNER TO freecodecamp;

--
-- Name: lifeform_lifeform_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.lifeform_lifeform_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lifeform_lifeform_id_seq OWNER TO freecodecamp;

--
-- Name: lifeform_lifeform_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.lifeform_lifeform_id_seq OWNED BY public.lifeform.lifeform_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text,
    diameter_in_km integer,
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
    type text,
    has_moon boolean,
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
    type text,
    location_distance_in_lightyear numeric(4,1),
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
-- Name: lifeform lifeform_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform ALTER COLUMN lifeform_id SET DEFAULT nextval('public.lifeform_lifeform_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'It has central bulge, a disk with spiral arms, and a halo of globular clusters.', 'Spiral Galaxy', 100000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'It is largest galaxy with prominent central bulge and spiral arms in the Local Group.', 'Spiral Galaxy', 220000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'It is notable for its hign rate of star formation and its prominent spiral structure', 'Spiral Galaxy', 60000);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Known for its supermasive black hole, it is one of the largest and most massive galaxies in the Virgo Cluster and has a large number of globular clusters.', 'Elliptical Galaxy', 120000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'It is one of the brightest galaxies in the sky and has a well defined spiral structure.', 'Spiral Galaxy', 50000);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'It is famous for its interaction with the nearby dwarf galaxy NGC 5195, which creates a visually striking system with a distinctspiral structure and prominent dust lane.', 'Spiral Galaxy', 60000);


--
-- Data for Name: lifeform; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.lifeform VALUES (1, 'Chicken', true, 3);
INSERT INTO public.lifeform VALUES (2, 'Cat', false, 3);
INSERT INTO public.lifeform VALUES (3, 'Dog', false, 3);
INSERT INTO public.lifeform VALUES (4, 'fish', true, 3);
INSERT INTO public.lifeform VALUES (5, 'Pokemon', false, 19);
INSERT INTO public.lifeform VALUES (6, 'Alien', false, 22);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon (Luna)', 'Terrestrial Moon', 3474, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Small Irregular Moon', 22, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Small Irregular Moon', 12, 4);
INSERT INTO public.moon VALUES (4, 'Io', 'Volcanic Moon', 3643, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'Icy Moon', 3121, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Icy Moon', 5268, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Icy Moon', 4821, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 'Large Icy Moon', 5151, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 'Icy Moon', 1527, 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', 'Icy Moon', 504, 6);
INSERT INTO public.moon VALUES (11, 'Mimas', 'Icy Moon', 396, 6);
INSERT INTO public.moon VALUES (12, 'Titania', 'Icy Moon', 1578, 7);
INSERT INTO public.moon VALUES (13, 'Oberon', 'Icy Moon', 1523, 7);
INSERT INTO public.moon VALUES (14, 'Umbriel', 'Icy Moon', 1169, 7);
INSERT INTO public.moon VALUES (15, 'Ariel', 'Icy Moon', 1158, 7);
INSERT INTO public.moon VALUES (16, 'Triton', 'Icy Moon', 1680, 8);
INSERT INTO public.moon VALUES (17, 'Nereid', 'Irregular Moon', 340, 8);
INSERT INTO public.moon VALUES (18, 'Gemstar', 'Irregular Moon', 1552, 12);
INSERT INTO public.moon VALUES (19, 'Poke', 'Icy Moon', 967, 12);
INSERT INTO public.moon VALUES (20, 'Lai', 'Icy Moon', 3345, 23);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Terrestrial', false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Terrestrial', false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Terrestrial', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Terrestrial', true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas Giant', true, 1);
INSERT INTO public.planet VALUES (6, 'Sarturn', 'Gas Giant', true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice Giant', true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice Giant', true, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 'Potentially Rocky', false, 2);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri c', 'Super-Earth', false, 2);
INSERT INTO public.planet VALUES (11, 'Kelper-186b', 'Potentially Rocky', false, 3);
INSERT INTO public.planet VALUES (13, 'Kelper-186d', 'Super-Earth', false, 3);
INSERT INTO public.planet VALUES (14, 'Kelper-186e', 'Potentially Rocky', false, 3);
INSERT INTO public.planet VALUES (15, 'Kelper-186f', 'Potentially Rocky', false, 3);
INSERT INTO public.planet VALUES (16, 'HD 209458 b', 'Hot Jupiter', false, 4);
INSERT INTO public.planet VALUES (17, '55 Cancri b', 'Hot Jupiter', false, 5);
INSERT INTO public.planet VALUES (18, '55 Cancri c', 'Gas Giant', false, 5);
INSERT INTO public.planet VALUES (19, '55 Cancri d', 'Super-Earth', false, 5);
INSERT INTO public.planet VALUES (20, '55 Cancri e', 'Super-Earth', false, 5);
INSERT INTO public.planet VALUES (21, '55 Cancri f', 'Ice Giant', false, 5);
INSERT INTO public.planet VALUES (22, 'Tau Ceti b', 'Super-Earth', false, 6);
INSERT INTO public.planet VALUES (24, 'Tau Ceti d', 'Super-Earth', false, 6);
INSERT INTO public.planet VALUES (25, 'Tau Ceti e', 'Super-Earth', false, 6);
INSERT INTO public.planet VALUES (12, 'Kelper-186c', 'Super-Earth', true, 3);
INSERT INTO public.planet VALUES (23, 'Tau Ceti c', 'Super-Earth', true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-type Main Sequence Star (G dwarf)', 8.2, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Red Dwarf (M-type)', 4.2, 2);
INSERT INTO public.star VALUES (3, 'Kepler', 'Red Dwarf (M-type)', 500.0, 3);
INSERT INTO public.star VALUES (4, 'HD209458 (Osiris)', 'G-type Main Sequence Star (G dwarf)', 150.0, 4);
INSERT INTO public.star VALUES (5, '55 Cancri (Rho Cancri)', 'G-type Main Sequence Star (G dwarf)', 41.0, 5);
INSERT INTO public.star VALUES (6, 'Tau Ceti', 'G-type Main Sequence Star (G dwarf)', 11.9, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: lifeform_lifeform_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.lifeform_lifeform_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 25, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: lifeform lifeform_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform
    ADD CONSTRAINT lifeform_name_key UNIQUE (name);


--
-- Name: lifeform lifeform_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform
    ADD CONSTRAINT lifeform_pkey PRIMARY KEY (lifeform_id);


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
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: lifeform lifeform_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform
    ADD CONSTRAINT lifeform_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

