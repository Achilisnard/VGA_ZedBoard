--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Wed Oct  4 14:21:50 2023
--Host        : gs21-10 running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    btn : in STD_LOGIC;
    clk100_zed : in STD_LOGIC;
    sioc : out STD_LOGIC;
    siod : inout STD_LOGIC;
    sw1 : in STD_LOGIC;
    sw2 : in STD_LOGIC;
    vga_blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_hsync : out STD_LOGIC;
    vga_red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_vsync : out STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    vid_clk : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    vid_hsync : out STD_LOGIC;
    vid_vsync : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    clk100_zed : in STD_LOGIC;
    vga_red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_hsync : out STD_LOGIC;
    vga_vsync : out STD_LOGIC;
    sw1 : in STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    vid_hsync : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_clk : out STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    siod : inout STD_LOGIC;
    sioc : out STD_LOGIC;
    btn : in STD_LOGIC;
    sw2 : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      btn => btn,
      clk100_zed => clk100_zed,
      sioc => sioc,
      siod => siod,
      sw1 => sw1,
      sw2 => sw2,
      vga_blue(3 downto 0) => vga_blue(3 downto 0),
      vga_green(3 downto 0) => vga_green(3 downto 0),
      vga_hsync => vga_hsync,
      vga_red(3 downto 0) => vga_red(3 downto 0),
      vga_vsync => vga_vsync,
      vid_active_video => vid_active_video,
      vid_clk => vid_clk,
      vid_data(15 downto 0) => vid_data(15 downto 0),
      vid_hsync => vid_hsync,
      vid_vsync => vid_vsync
    );
end STRUCTURE;
