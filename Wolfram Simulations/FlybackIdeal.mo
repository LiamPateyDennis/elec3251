model FlybackIdeal
  Modelica.Electrical.Analog.Ideal.IdealDiode diode(Vknee = 0) annotation(Placement(visible = true, transformation(origin = {35, 25}, extent = {{-10, -10}, {10, 10}}, rotation = -360)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-30, -55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 220) annotation(Placement(visible = true, transformation(origin = {92.33, 4.636}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage1(V = 12) annotation(Placement(visible = true, transformation(origin = {-80, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Ideal.IdealOpeningSwitch switch(Ron = 1e-5) annotation(Placement(visible = true, transformation(origin = {-30, -15}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Sources.BooleanPulse booleanPulse(period = 10e-6, width = 45.45) annotation(Placement(visible = true, transformation(origin = {-10, -25}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor2(R = 10000000) annotation(Placement(visible = true, transformation(origin = {13.454, -21.802}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Ideal.IdealTransformer transformer(n = 1, considerMagnetization = true, Lm1 = 0.003) annotation(Placement(visible = true, transformation(origin = {-7.719, 13.062}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = 10e-08) annotation(Placement(visible = true, transformation(origin = {67.686, 5}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
equation
  connect(constantVoltage1.n, ground1.p) annotation(Line(visible = true, origin = {-62.5, -43.613}, points = {{-17.5, 33.613}, {-17.5, 6.25}, {32.5, 6.25}, {32.5, -1.387}}, color = {10, 90, 224}));
  connect(switch.n, ground1.p) annotation(Line(visible = true, origin = {-35, -39.954}, points = {{5, 14.954}, {5, 2.5}, {5, 2.5}, {5, -5.046}}, color = {10, 90, 224}));
  connect(booleanPulse.y, switch.control) annotation(Line(visible = true, origin = {-7.875, -20}, points = {{3.375, -5}, {5.875, -5}, {5.875, 5}, {-15.125, 5}}, color = {255, 0, 255}));
  connect(resistor2.n, ground1.p) annotation(Line(visible = true, origin = {-15.773, -37.878}, points = {{29.227, 6.076}, {29.227, 0.8}, {-14.227, 0.8}, {-14.227, -7.122}}, color = {10, 90, 224}));
  connect(constantVoltage1.p, transformer.p1) annotation(Line(visible = true, origin = {-59.24, 15.375}, points = {{-20.76, -5.375}, {-20.76, 2.687}, {41.521, 2.687}}, color = {10, 90, 224}));
  connect(switch.p, transformer.n1) annotation(Line(visible = true, origin = {-25.906, 3.708}, points = {{-4.094, -8.708}, {-4.094, 4.354}, {8.188, 4.354}}, color = {10, 90, 224}));
  connect(transformer.n2, resistor2.p) annotation(Line(visible = true, origin = {9.73, 1.441}, points = {{-7.448, 6.621}, {3.724, 6.621}, {3.724, -13.243}}, color = {10, 90, 224}));
  connect(transformer.p2, diode.p) annotation(Line(visible = true, origin = {10.461, 21.531}, points = {{-8.18, -3.469}, {-3.18, -3.469}, {-3.18, 3.469}, {14.539, 3.469}}, color = {10, 90, 224}));
  connect(resistor1.p, diode.n) annotation(Line(visible = true, points = {{15.777, -6.909}, {15.777, 3.455}, {-31.553, 3.455}}, color = {10, 90, 224}, origin = {76.553, 21.545}));
  connect(resistor2.p, resistor1.n) annotation(Line(visible = true, points = {{-31.292, -3.219}, {-31.292, 1.781}, {-16.292, 1.781}, {-16.292, -1.781}, {47.584, -1.781}, {47.584, 3.219}}, color = {10, 90, 224}, origin = {44.746, -8.583}));
  connect(capacitor1.p, diode.n) annotation(Line(visible = true, origin = {60.124, 21.667}, points = {{7.562, -6.667}, {7.562, 3.333}, {-15.124, 3.333}}, color = {10, 90, 224}));
  connect(capacitor1.n, resistor2.p) annotation(Line(visible = true, origin = {44.609, -8.401}, points = {{23.077, 3.401}, {23.077, -1.599}, {8.077, -1.599}, {8.077, 1.599}, {-31.155, 1.599}, {-31.155, -3.401}}, color = {10, 90, 224}));
  annotation(uses(Modelica(version = "3.2.3")), experiment(StopTime = 2, Interval = 1e-6), Diagram(coordinateSystem(extent = {{-150, -90}, {150, 90}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Rectangle(visible = true, lineColor = {0, 114, 195}, fillColor = {255, 255, 255}, extent = {{-100, -100}, {100, 100}}, radius = 25), Text(visible = true, textColor = {64, 64, 64}, extent = {{-150, 110}, {150, 150}}, textString = "%name")}));
end FlybackIdeal;