--[[

██╗     ██╗   ██╗ █████╗     ███████╗████████╗██╗   ██╗██████╗ ██╗ ██████╗ 
██║     ██║   ██║██╔══██╗    ██╔════╝╚══██╔══╝██║   ██║██╔══██╗██║██╔═══██╗
██║     ██║   ██║███████║    ███████╗   ██║   ██║   ██║██║  ██║██║██║   ██║
██║     ██║   ██║██╔══██║    ╚════██║   ██║   ██║   ██║██║  ██║██║██║   ██║
███████╗╚██████╔╝██║  ██║    ███████║   ██║   ╚██████╔╝██████╔╝██║╚██████╔╝
╚══════╝ ╚═════╝ ╚═╝  ╚═╝    ╚══════╝   ╚═╝    ╚═════╝ ╚═════╝ ╚═╝ ╚═════╝ 

--]]

local T = game:GetService("Players");
local l = game:GetService("TweenService");
local b = game:GetService("UserInputService");
local z = game:GetService("RunService");
local q = game:GetService("Lighting");
local P = game:GetService("HttpService");
local F = T.LocalPlayer;
local K = {};
repeat
	task.wait();
until game:IsLoaded();
local R = Color3.fromRGB(255, 221, 0);
local W = Color3.fromRGB(200, 170, 0);
local i = Color3.fromRGB(0, 0, 0);
local O = R;
local p = W;
local Z = R;
local f = R;
local Y = R;
local function E()
	local T = l;
	local function b(l, b, z)
		return T:Create(l, b, z);
	end;
	local z = R or Color3.fromRGB(255, 221, 0);
	local P = Instance.new("BlurEffect");
	P.Name = "LuaStudio_Blur";
	P.Size = 0;
	P.Parent = q;
	local K = Instance.new("ScreenGui");
	K.Name = "LuaStudioIntro";
	K.IgnoreGuiInset = true;
	K.ResetOnSpawn = false;
	K.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	K.DisplayOrder = 9999;
	K.Parent = F:WaitForChild("PlayerGui");
	local W = Instance.new("Frame");
	W.Size = UDim2.new(1, 0, 1, 0);
	W.Position = UDim2.new(0, 0, 0, 0);
	W.BackgroundTransparency = 1;
	W.ClipsDescendants = true;
	W.Parent = K;
	local i = Instance.new("Frame");
	i.Size = UDim2.new(1, 0, 1, 0);
	i.BackgroundColor3 = Color3.fromRGB(2, 2, 2);
	i.BackgroundTransparency = 1;
	i.Parent = W;
	local O = Instance.new("Sound");
	O.SoundId = "rbxassetid://115039380423779";
	O.Volume = 1;
	O.Parent = W;
	local p = {
			{
				1,
				1,
				0,
				0,
				0,
				1,
				1,
				1,
				1,
				1,
			},
			{
				1,
				1,
				0,
				0,
				1,
				1,
				0,
				0,
				0,
				0,
			},
			{
				1,
				1,
				0,
				0,
				1,
				1,
				0,
				0,
				0,
				0,
			},
			{
				1,
				1,
				0,
				0,
				0,
				1,
				1,
				1,
				1,
				0,
			},
			{
				1,
				1,
				0,
				0,
				0,
				0,
				0,
				0,
				1,
				1,
			},
			{
				1,
				1,
				0,
				0,
				0,
				0,
				0,
				0,
				1,
				1,
			},
			{
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				0,
			},
			{
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				1,
				0,
				0,
			},
		};
	local Z = 22;
	local f = #p[1] * Z;
	local Y = #p * Z;
	local E = Instance.new("Frame");
	E.Size = UDim2.new(0, f, 0, Y);
	E.Position = UDim2.new(.5, -f / 2, .42, -Y / 2);
	E.BackgroundTransparency = 1;
	E.Parent = W;
	local y = Instance.new("TextLabel");
	y.Size = UDim2.new(1, 0, 0, 36);
	y.Position = UDim2.new(0, 0, .42, Y / 2 + 25);
	y.Text = "L U A   S T U D I O";
	y.TextColor3 = z;
	y.Font = Enum.Font.GothamBlack;
	y.TextSize = 22;
	y.TextTransparency = 1;
	y.BackgroundTransparency = 1;
	y.Parent = W;
	pcall(function()
		O:Play();
	end);
	(b(P, TweenInfo.new(.4), { Size = 56 })):Play();
	(b(i, TweenInfo.new(.4), { BackgroundTransparency = .45 })):Play();
	local e = {};
	for T, l in ipairs(p) do
		for l, b in ipairs(l) do
			if b == 1 then
				local b = ((l - 1)) * Z;
				local q = ((T - 1)) * Z;
				local P = math.rad(math.random(0, 360));
				local F = math.random(600, 1200);
				local K = b + math.cos(P) * F;
				local R = q + math.sin(P) * F;
				local W = Instance.new("Frame");
				W.Size = UDim2.new(0, Z * 1.6, 0, Z * 1.6);
				W.Position = UDim2.new(0, K, 0, R);
				W.BackgroundColor3 = z;
				W.BorderSizePixel = 0;
				W.BackgroundTransparency = 1;
				W.Parent = E;
				local i = Instance.new("UICorner");
				i.CornerRadius = UDim.new(0, 3);
				i.Parent = W;
				table.insert(e, {
					frame = W,
					targetPos = UDim2.new(0, b, 0, q),
					targetSize = UDim2.new(0, Z - 2, 0, Z - 2),
					delay = math.random() * .4,
				});
			end;
		end;
	end;
	task.wait(.1);
	for T, l in ipairs(e) do
		task.delay(l.delay, function()
			(b(l.frame, TweenInfo.new(.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Position = l.targetPos, Size = l.targetSize, BackgroundTransparency = 0 })):Play();
		end);
	end;
	task.wait(.9);
	(b(y, TweenInfo.new(.35), { TextTransparency = 0 })):Play();
	for T, l in ipairs(e) do
		(b(l.frame, TweenInfo.new(.12), { BackgroundColor3 = Color3.fromRGB(255, 255, 255) })):Play();
	end;
	task.wait(.12);
	for T, l in ipairs(e) do
		(b(l.frame, TweenInfo.new(.18), { BackgroundColor3 = z })):Play();
	end;
	task.wait(.8);
	(b(P, TweenInfo.new(.4), { Size = 0 })):Play();
	(b(i, TweenInfo.new(.4), { BackgroundTransparency = 1 })):Play();
	(b(y, TweenInfo.new(.3), { TextTransparency = 1 })):Play();
	(b(O, TweenInfo.new(.4), { Volume = 0 })):Play();
	for T, l in ipairs(e) do
		(b(l.frame, TweenInfo.new(.35, Enum.EasingStyle.Back, Enum.EasingDirection.In), { Size = UDim2.new(0, 0, 0, 0), BackgroundTransparency = 1 })):Play();
	end;
	task.wait(.4);
	if K then
		K:Destroy();
	end;
	if P then
		P:Destroy();
	end;
end;
pcall(E);
K.LUA_STUDIO_SKY_TAG = "LuaStudioSkyTheme";
K.currentSkyTheme = "Night";
K.LUA_STUDIO_SKY_PRESETS = {
		Off = {
			clock = 0,
			brightness = 1,
			ambient = { 15, 15, 15 },
			outAmb = { 10, 10, 10 },
			sky = { stars = 0, moon = 0, sun = 0 },
			atm = {
				dens = 0,
				color = { 0, 0, 0 },
				decay = { 0, 0, 0 },
				glare = 0,
				haze = 0,
			},
		},
		Night = {
			clock = 0,
			brightness = 1,
			ambient = { 15, 15, 15 },
			outAmb = { 10, 10, 10 },
			sky = { stars = 0, moon = 0, sun = 0 },
			atm = {
				dens = 0,
				color = { 0, 0, 0 },
				decay = { 0, 0, 0 },
				glare = 0,
				haze = 0,
			},
		},
		Dark = {
			clock = 0,
			brightness = 1,
			ambient = { 10, 10, 10 },
			outAmb = { 5, 5, 5 },
			sky = { stars = 0, moon = 0, sun = 0 },
			atm = {
				dens = 0,
				color = { 0, 0, 0 },
				decay = { 0, 0, 0 },
				glare = 0,
				haze = 0,
			},
		},
		PureBlack = {
			clock = 0,
			brightness = .8,
			ambient = { 0, 0, 0 },
			outAmb = { 0, 0, 0 },
			sky = { stars = 0, moon = 0, sun = 0 },
			atm = {
				dens = 0,
				color = { 0, 0, 0 },
				decay = { 0, 0, 0 },
				glare = 0,
				haze = 0,
			},
		},
	};
K.SkyOrder = {
		"Night",
		"Dark",
		"PureBlack",
		"Off",
	};
local function y(T)
	return Color3.fromRGB(T[1], T[2], T[3]);
end;
function K.LuaStudioApplyCustomSky(T)
	return;
end;
K.PACKS = {
		["Adidas Sports"] = {
			WalkAnim = 18537392113,
			RunAnim = 18537384940,
			JumpAnim = 18537380791,
			FallAnim = 18537367238,
			SwimIdle = 18537387180,
			Swim = 18537389531,
			Animation1 = 18537376492,
			Animation2 = 18537371272,
			ClimbAnim = 18537363391,
		},
		["Adidas Community"] = {
			WalkAnim = 1.2215085545701e+14,
			RunAnim = 82598234841035,
			JumpAnim = 75290611992385,
			FallAnim = 98600215928904,
			SwimIdle = 1.0934652032416e+14,
			Swim = 1.3330848326621e+14,
			Animation1 = 1.2225745849846e+14,
			Animation2 = 1.0235715100577e+14,
			ClimbAnim = 88763136693023,
		},
		["Adidas Aura"] = {
			WalkAnim = 83842218823011,
			RunAnim = 1.1832032271887e+14,
			JumpAnim = 1.099966265212e+14,
			FallAnim = 95603166884636,
			SwimIdle = 94922130551805,
			Swim = 1.345301283839e+14,
			Animation1 = 1.1021118684035e+14,
			Animation2 = 1.1419113726506e+14,
			ClimbAnim = 97824616490448,
		},
		["Wicked Popular"] = {
			WalkAnim = 92072849924640,
			RunAnim = 72301599441680,
			JumpAnim = 1.043252452852e+14,
			FallAnim = 1.2115244276248e+14,
			Animation1 = 1.1883222298205e+14,
			ClimbAnim = 1.3132683050978e+14,
			SwimIdle = 1.131994151182e+14,
			Swim = 99384245425157,
			Animation2 = 76049494037641,
		},
		Elder = {
			WalkAnim = 10921111375,
			RunAnim = 10921104374,
			JumpAnim = 10921107367,
			FallAnim = 10921105765,
			SwimIdle = 10921110146,
			Swim = 10921108971,
			ClimbAnim = 10921100400,
			Animation1 = 10921101664,
			Animation2 = 10921102574,
		},
		Zombie = {
			WalkAnim = 10921355261,
			RunAnim = 616163682,
			JumpAnim = 10921351278,
			FallAnim = 10921350320,
			SwimIdle = 10921353442,
			Swim = 10921352344,
			Animation1 = 10921344533,
			Animation2 = 10921345304,
			ClimbAnim = 10921343576,
		},
		Mage = {
			WalkAnim = 10921152678,
			RunAnim = 10921148209,
			JumpAnim = 10921149743,
			FallAnim = 10921148939,
			SwimIdle = 10921151661,
			Swim = 10921150788,
			ClimbAnim = 10921143404,
			Animation1 = 10921144709,
			Animation2 = 10921145797,
		},
		["Catwalk Glam"] = {
			WalkAnim = 1.0916872448275e+14,
			RunAnim = 81024476153754,
			JumpAnim = 1.1693632651698e+14,
			FallAnim = 92294537340807,
			SwimIdle = 98854111361360,
			Swim = 1.3459174318163e+14,
			ClimbAnim = 1.1937722096755e+14,
			Animation1 = 1.3380621499229e+14,
			Animation2 = 94970088341563,
		},
		Astronaut = {
			WalkAnim = 10921046031,
			RunAnim = 10921039308,
			JumpAnim = 10921042494,
			FallAnim = 10921040576,
			SwimIdle = 10921045006,
			Swim = 10921044000,
			ClimbAnim = 10921032124,
			Animation1 = 10921034824,
			Animation2 = 10921036806,
		},
		["Wicked \"Dancing Through Life\""] = {
			WalkAnim = 73718308412641,
			RunAnim = 1.3551545487797e+14,
			JumpAnim = 78508480717326,
			FallAnim = 78147885297412,
			SwimIdle = 1.2918312308328e+14,
			Swim = 1.1065701392177e+14,
			ClimbAnim = 1.2944749774482e+14,
			Animation1 = 92849173543269,
			Animation2 = 1.3223890095111e+14,
		},
		Werewolf = {
			WalkAnim = 10921342074,
			RunAnim = 10921336997,
			JumpAnim = nil,
			FallAnim = 10921337907,
			SwimIdle = 10921341319,
			Swim = 10921340419,
			ClimbAnim = 10921329322,
			Animation1 = 10921330408,
			Animation2 = 10921333667,
		},
		Superhero = {
			WalkAnim = 10921298616,
			RunAnim = 10921291831,
			JumpAnim = 10921294559,
			FallAnim = 10921293373,
			SwimIdle = 10921297391,
			Swim = 10921295495,
			ClimbAnim = 10921286911,
			Animation1 = 10921288909,
			Animation2 = 10921290167,
		},
		Toy = {
			WalkAnim = 10921312010,
			RunAnim = 10921306285,
			JumpAnim = 10921308158,
			FallAnim = 10921307241,
			SwimIdle = 10921310341,
			Swim = 10921309319,
			ClimbAnim = 10921300839,
			Animation1 = 10921301576,
			Animation2 = nil,
		},
		["No Boundaries"] = {
			WalkAnim = 18747074203,
			RunAnim = 18747070484,
			JumpAnim = 18747069148,
			FallAnim = 18747062535,
			SwimIdle = 18747071682,
			Swim = 18747073181,
			ClimbAnim = 18747060903,
			Animation1 = 18747067405,
			Animation2 = 18747063918,
		},
		NFL = {
			WalkAnim = 1.1035895829942e+14,
			RunAnim = 1.1733353304808e+14,
			JumpAnim = 1.1984611215135e+14,
			FallAnim = 1.2977324132103e+14,
			SwimIdle = 79090109939093,
			Swim = 1.3269739418992e+14,
			ClimbAnim = 1.3463001374202e+14,
			Animation1 = 92080889861410,
			Animation2 = 74451233229259,
		},
		["Amazon Unboxed"] = {
			WalkAnim = 90478085024465,
			RunAnim = 1.3482445061986e+14,
			JumpAnim = 1.214545054772e+14,
			FallAnim = 94788218468396,
			SwimIdle = 1.2912626846485e+14,
			Swim = 1.0596291900109e+14,
			ClimbAnim = 1.2114588395023e+14,
			Animation1 = 98281136301627,
			Animation2 = nil,
		},
		Vampire = {
			WalkAnim = 10921326949,
			RunAnim = 10921320299,
			JumpAnim = 10921322186,
			FallAnim = 10921321317,
			SwimIdle = 10921325443,
			Swim = 10921324408,
			ClimbAnim = 10921314188,
			Animation1 = 10921315373,
			Animation2 = nil,
		},
		Ninja = {
			Run = 656118852,
			Walk = 656121766,
			Jump = 656117878,
			Fall = 656115606,
			Swim = 656119721,
			SwimIdle = 656121397,
			Climb = 656114359,
			Idle = { 656117400, 656118341, 886742569 },
		},
		Robot = {
			Run = 616091570,
			Walk = 616095330,
			Jump = 616090535,
			Fall = 616087089,
			Swim = 616092998,
			SwimIdle = 616094091,
			Climb = 616086039,
			Idle = { 616088211, 616089559, 885531463 },
		},
		Levitation = {
			Run = 616010382,
			Walk = 616013216,
			Jump = 616008936,
			Fall = 616005863,
			Swim = 616011509,
			SwimIdle = 616012453,
			Climb = 616003713,
			Idle = { 616006778, 616008087, 886862142 },
		},
		Stylish = {
			Run = 616140816,
			Walk = 616146177,
			Jump = 616139451,
			Fall = 616134815,
			Swim = 616143378,
			SwimIdle = 616144772,
			Climb = 616133594,
			Idle = { 616136790, 616138447, 886888594 },
		},
		Bubbly = {
			Run = 910025107,
			Walk = 910034870,
			Jump = 910016857,
			Fall = 910001910,
			Swim = 910028158,
			SwimIdle = 910030921,
			Climb = 909997997,
			Idle = { 910004836, 910009958, 1018536639 },
		},
		Cartoon = {
			Run = 742638842,
			Walk = 742640026,
			Jump = 742637942,
			Fall = 742637151,
			Swim = 742639220,
			SwimIdle = 742639812,
			Climb = 742636889,
			Idle = { 742637544, 742638445, 885477856 },
		},
	};
K.animPack = "Adidas Sports";
K.animPackEnabled = true;
K.savedAnimate = nil;
K.headlessEnabled = false;
K.korbloxEnabled = false;
local e = "rbxassetid://1095708";
local s = "rbxassetid://101851696";
local d = "rbxassetid://101851254";
local M = Color3.fromRGB(64, 64, 64);
local function w(T)
	local l = T:FindFirstChild("face");
	if l then
		l:Destroy();
	end;
end;
function K.applyHeadlessToChar(T, l)
	if not T then
		return;
	end;
	local b = T:FindFirstChild("Head");
	if not b then
		return;
	end;
	if l then
		b.Transparency = 1;
		b.CanCollide = false;
		w(b);
		if b:FindFirstChild("HeadlessMesh") then
			return;
		end;
		for T, l in ipairs(b:GetChildren()) do
			if l:IsA("SpecialMesh") and l.MeshId == e then
				l:Destroy();
			end;
		end;
		local T = Instance.new("SpecialMesh");
		T.MeshType = Enum.MeshType.FileMesh;
		T.MeshId = e;
		T.Scale = Vector3.new(.001, .001, .001);
		T.Name = "HeadlessMesh";
		T.Parent = b;
		(b:GetPropertyChangedSignal("Transparency")):Connect(function()
			if K.headlessEnabled and b.Transparency ~= 1 then
				b.Transparency = 1;
			end;
		end);
		b.ChildAdded:Connect(function(T)
			if K.headlessEnabled and (T.Name == "face" and T:IsA("Decal")) then
				T:Destroy();
			end;
		end);
	else
		b.Transparency = 0;
		b.CanCollide = true;
		for T, l in ipairs(b:GetChildren()) do
			if l:IsA("SpecialMesh") and l.Name == "HeadlessMesh" then
				l:Destroy();
			end;
		end;
		w(b);
	end;
end;
function K.applyKorbloxToChar(T, l)
	if not T then
		return;
	end;
	local b = T:FindFirstChildOfClass("Humanoid");
	if not b then
		return;
	end;
	if l then
		if b.RigType == Enum.HumanoidRigType.R6 then
			local l = T:FindFirstChild("Right Leg");
			if l then
				if l:FindFirstChild("KorbloxMesh") then
					return;
				end;
				for T, l in ipairs(l:GetChildren()) do
					if l:IsA("SpecialMesh") or l:IsA("CharacterMesh") then
						l:Destroy();
					end;
				end;
				l.Color = M;
				(l:GetPropertyChangedSignal("Color")):Connect(function()
					if K.korbloxEnabled and l.Color ~= M then
						l.Color = M;
					end;
				end);
				local T = Instance.new("SpecialMesh");
				T.MeshType = Enum.MeshType.FileMesh;
				T.MeshId = s;
				T.TextureId = d;
				T.Scale = Vector3.new(1, 1, 1);
				T.Name = "KorbloxMesh";
				T.Parent = l;
			end;
		elseif b.RigType == Enum.HumanoidRigType.R15 then
			local l = T:FindFirstChild("RightUpperLeg");
			if l then
				if T:FindFirstChild("KorbloxLeg") then
					return;
				end;
				l.Transparency = 1;
				local b = T:FindFirstChild("RightLowerLeg");
				local z = T:FindFirstChild("RightFoot");
				if b then
					b.Transparency = 1;
				end;
				if z then
					z.Transparency = 1;
				end;
				local q = T:FindFirstChild("KorbloxLeg");
				if q then
					q:Destroy();
				end;
				local P = Instance.new("Part");
				P.Name = "KorbloxLeg";
				P.Size = Vector3.new(1, 2, 1);
				P.Anchored = false;
				P.CanCollide = false;
				P.Color = M;
				P.Parent = T;
				local F = Instance.new("SpecialMesh");
				F.MeshType = Enum.MeshType.FileMesh;
				F.MeshId = s;
				F.TextureId = d;
				F.Scale = Vector3.new(1, 1, 1);
				F.Name = "KorbloxMesh";
				F.Parent = P;
				local K = Instance.new("Weld");
				K.Part0 = l;
				K.Part1 = P;
				K.C0 = CFrame.new(0, -0.8, 0);
				K.Name = "KorbloxWeld";
				K.Parent = P;
			end;
		end;
	else
		if b.RigType == Enum.HumanoidRigType.R6 then
			local l = T:FindFirstChild("Right Leg");
			if l then
				for T, l in ipairs(l:GetChildren()) do
					if l:IsA("SpecialMesh") and l.Name == "KorbloxMesh" then
						l:Destroy();
					end;
				end;
				l.Color = Color3.fromRGB(255, 255, 255);
			end;
		elseif b.RigType == Enum.HumanoidRigType.R15 then
			local l = T:FindFirstChild("RightUpperLeg");
			if l then
				l.Transparency = 0;
				local b = T:FindFirstChild("RightLowerLeg");
				local z = T:FindFirstChild("RightFoot");
				if b then
					b.Transparency = 0;
				end;
				if z then
					z.Transparency = 0;
				end;
				local q = T:FindFirstChild("KorbloxLeg");
				if q then
					q:Destroy();
				end;
			end;
		end;
	end;
end;
function K.applyCharterToChar(T)
	if not T then
		return;
	end;
	K.applyHeadlessToChar(T, K.headlessEnabled);
	K.applyKorbloxToChar(T, K.korbloxEnabled);
end;
F.CharacterAdded:Connect(function(T)
	task.wait(.15);
	K.applyCharterToChar(T);
end);
K.NS = 60;
K.CS = 30;
K.LAGGER_SPEED = 15;
K.LAGGER_CARRY_SPEED = 24.5;
K.carrySpeedActive = false;
K.laggerModeEnabled = false;
K.laggerCarryActive = false;
K.autoCarryOnGrab = false;
K._autoCarryConn = nil;
K.pingAlertEnabled = false;
K._pingAlertTask = nil;
K._pingAlertConn = nil;
K._linVel = nil;
K._linVelAtt0 = nil;
K._linVelAtt1 = nil;
K._linVelChar = nil;
local function Q(T)
	if K._linVel then
		pcall(function()
			K._linVel:Destroy();
		end);
		K._linVel = nil;
	end;
	if K._linVelAtt0 then
		pcall(function()
			K._linVelAtt0:Destroy();
		end);
		K._linVelAtt0 = nil;
	end;
	if K._linVelAtt1 then
		pcall(function()
			K._linVelAtt1:Destroy();
		end);
		K._linVelAtt1 = nil;
	end;
	local l = T and T:FindFirstChild("HumanoidRootPart");
	if not l then
		return;
	end;
	local b = Instance.new("Attachment");
	b.Name = "LuaStudioLinVelAtt0";
	b.Parent = l;
	local z = Instance.new("Attachment");
	z.Name = "LuaStudioLinVelAtt1";
	z.Parent = l;
	local q = Instance.new("LinearVelocity");
	q.Name = "LuaStudioLinVel";
	q.Attachment0 = b;
	q.Attachment1 = z;
	q.VelocityConstraintMode = Enum.VelocityConstraintMode.Plane;
	q.PrimaryTangentAxis = Vector3.new(1, 0, 0);
	q.SecondaryTangentAxis = Vector3.new(0, 0, 1);
	q.RelativeTo = Enum.ActuatorRelativeTo.World;
	q.MaxForce = 1000000;
	q.PlaneVelocity = Vector2.new(0, 0);
	q.Parent = l;
	K._linVel = q;
	K._linVelAtt0 = b;
	K._linVelAtt1 = z;
	K._linVelChar = T;
end;
local function u(T, l)
	if K._linVel and K._linVel.Parent then
		K._linVel.PlaneVelocity = Vector2.new(T, l);
	end;
end;
local function k()
	if K._linVel and K._linVel.Parent then
		K._linVel.PlaneVelocity = Vector2.new(0, 0);
	end;
end;
K.antiRagdollEnabled = false;
K.infJumpEnabled = false;
K.infJumpMode = "manual";
K.medusaCounterEnabled = false;
K.batCounterEnabled = false;
K.unwalkEnabled = false;
K.medusaResetEnabled = false;
K.medusaDebounce = false;
K.medusaLastUsed = 0;
K.dropActive = false;
K.dropMode = "Jump";
K.autoLeftEnabled = false;
K.autoRightEnabled = false;
K.autoBatEnabled = false;
K.autoSwingEnabled = true;
K.autoMoveSwingEnabled = false;
K.autoMoveSwingInterval = .3;
K._alSwingDebounce = false;
K._arSwingDebounce = false;
K.antiLagEnabled = false;
K.removeAccessoriesEnabled = false;
K.antiLagDescConn = nil;
K.stretchRezEnabled = false;
K.stretchRezConn = nil;
K.unwalkSavedAnimate = nil;
K._anyKeyListening = false;
K.autoTPEnabled = false;
K.autoTPHeight = 20;
K.autoTPConn = nil;
K.CURSED_RESET_GUID = "f888ee6e-c86d-46e1-93d7-0639d6635d42";
K.guiTransparencyEnabled = false;
K.mobileButtonsEnabled = true;
K.mobileButtonsLocked = false;
K.mobileButtonsSize = 90;
K.circleButtonsEnabled = false;
K.mobBtnRefs = {};
K.mobGuiRef = nil;
K.fovValue = 80;
K.fovOptions = { 80, 120, 180 };
K.fovIndex = 1;
K.laggerModePillRef = nil;
K.carryModePillRef = nil;
K.autoSwitchSpeedEnabled = false;
K.mobBtnTransparencyEnabled = false;
K.perButtonDragEnabled = false;
K.antiKickEnabled = false;
K.brainrotDetected = false;
K.activeBatBillboard = nil;
K.activeMedusaBillboard = nil;
K.ragdollGuiEnabled = true;
K.persistentRagdollGui = nil;
K.uiLocked = false;
K.holdInfJumpConn = nil;
K.DROP_ASCEND_DURATION = .2;
K.DROP_ASCEND_SPEED = 150;
K.autoResetOnDeath = false;
K.bodyLockEnabled = false;
K.bodyLockRadius = 60;
K.bodyLockConn = nil;
K.bypassAimbotEnabled = false;
K.bypassAimbotMode = "TPBat";
K.bypassAimbotConn = nil;
K.bypassPrevAutoRotate = nil;
K.bypassHitCD = false;
K.bypassSwingCD = .35;
K.bypassHitDist = 8;
K._bypassTarget = nil;
K.stealMode = "Normal";
K.stealBarSize = 300;
K.stealBarScale = .9;
K.Steal = { AutoStealEnabled = false, StealRadius = 60, StealDuration = 1.4 };
K.Semi = {
		HoldMin = 1.3,
		HoldMax = 2.6,
		EntryDelay = .3,
		Cooldown = .05,
		StealRange = 9,
		PrimeRange = 80,
		allAnimalsCache = {},
		PromptMemoryCache = {},
		InternalStealCache = {},
		stealConnection = nil,
		StealState = {
			active = false,
			startTime = 0,
			phase = "idle",
			label = "",
			lastResult = "",
			lastResultTime = 0,
			totalSteals = 0,
			failedSteals = 0,
		},
		plots = workspace:WaitForChild("Plots"),
		syncRemotes = nil,
		plotAnimalSync = { caches = {}, connections = {} },
		AnimalsData = nil,
		initialized = false,
	};
K.isStealing = false;
K.stealStartTime = 0;
K.stealConn = nil;
K.progressConn = nil;
K.animalCache = {};
K.promptCache = {};
K.stealCache = {};
K.playerESPEnabled = false;
K.espList = {};
K.pingPopupActive = false;
K.pingPopupGui = nil;
K.pingCycleTimer = nil;
K.Conns = {
		autoSteal = nil,
		antiRag = nil,
		batCounter = nil,
		anchor = {},
	};
K._persistentConns = {};
K.alConn = nil;
K.arConn = nil;
K.alPhase = 1;
K.arPhase = 1;
K.aimbotConn = nil;
K.lastMoveDir = Vector3.new(0, 0, 0);
K.batCounterDebounce = false;
K.speedLabel = nil;
K.KB = {
		DropBrainrot = { kb = nil, gp = nil },
		AutoLeft = { kb = nil, gp = nil },
		AutoRight = { kb = nil, gp = nil },
		AutoBat = { kb = nil, gp = nil },
		TPFloor = { kb = nil, gp = nil },
		InstaReset = { kb = nil, gp = nil },
		GuiHide = { kb = Enum.KeyCode.LeftControl, gp = nil },
		SpeedToggle = { kb = nil, gp = nil },
		LaggerToggle = { kb = nil, gp = nil },
		BypassAimbot = { kb = nil, gp = nil },
		BodyLock = { kb = nil, gp = nil },
	};
K.AP_L1 = Vector3.new(-476.47, -6.28, 92.73);
K.AP_L2 = Vector3.new(-483.12, -4.95, 94.81);
K.AP_R1 = Vector3.new(-476.16, -6.52, 25.62);
K.AP_R2 = Vector3.new(-483.06, -5.03, 25.48);
K.MEDUSA_COOLDOWN = 25;
K.BAT_COUNTER_SLAP_LIST = {
		"Bat",
		"Slap",
		"Iron Slap",
		"Gold Slap",
		"Diamond Slap",
		"Emerald Slap",
		"Ruby Slap",
		"Dark Matter Slap",
		"Flame Slap",
		"Nuclear Slap",
		"Galaxy Slap",
		"Glitched Slap",
	};
K.fovConn = nil;
K.defLightBrightness = nil;
K.defLightClock = nil;
K.defLightAmbient = nil;
K.mainFrame = nil;
K.normalBox = nil;
K.carryBox = nil;
K.laggerBox = nil;
K.radInput = nil;
K.autoTPHeightBox = nil;
K.durationBox = nil;
K.modeValLbl = nil;
K.setInstaGrab = nil;
K.setInfJumpVisual = nil;
K.setAntiRagVisual = nil;
K.setMedusaVisual = nil;
K.setUnwalkVisual = nil;
K.setAntiLagVisual = nil;
K.setAutoSwingVisual = nil;
K.setTranspVisual = nil;
K.setLockVisual = nil;
K.setMobVisual = nil;
K.setCircleBtnsVisual = nil;
K.setMedusaResetVisual = nil;
K.antiKickSetVisual = nil;
K.autoLeftSetVisual = nil;
K.autoRightSetVisual = nil;
K.autoBatSetVisual = nil;
K.setAutoTPVisual = nil;
K.setStretchRezVisual = nil;
K.setAutoResetOnDeath = nil;
K.setBypassVisual = nil;
K._autoSwitchWasSteal = false;
K.MOB_POS_FILE = "moveeduels_btnpos.json";
K.MOVE_KEYS = {
		[Enum.KeyCode.W] = true,
		[Enum.KeyCode.A] = true,
		[Enum.KeyCode.S] = true,
		[Enum.KeyCode.D] = true,
		[Enum.KeyCode.Up] = true,
		[Enum.KeyCode.Left] = true,
		[Enum.KeyCode.Down] = true,
		[Enum.KeyCode.Right] = true,
	};
K.showPlayerSpeeds = false;
K.playerSpeedGuis = {};
K.playerSpeedUpdateConn = nil;
K.nukeOptimizerEnabled = false;
K.nukeConns = {};
K.nukeThreads = {};
K.nukeOn = false;
K.removeAccEnabled = false;
K.removeAccConn = nil;
K.removedAccessories = {};
K.uiScale = 1;
K.uiScaleSliderRef = nil;
K.uiScaleLabelRef = nil;
K.uiScaleBoxRef = nil;
K.bgImageId = "";
K.BG_IMAGE_DEFAULT = "";
K.bgTransparency = 1;
K.lineESPEnabled = false;
K.speedESPEnabled = false;
K.statusGui = nil;
K.statusFill = nil;
K.statusPctLbl = nil;
K.statusRadiusLbl = nil;
K.statusDot = nil;
K.statusMain = nil;
K.statusFpsLbl = nil;
function K.addShimmerToLabel(T, l, b)
	local z = Instance.new("UIGradient", T);
	z.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, l or Color3.fromRGB(255, 221, 0)), ColorSequenceKeypoint.new(.5, b or Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, l or Color3.fromRGB(255, 221, 0)) });
	z.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, .3, 0), NumberSequenceKeypoint.new(.5, 0, 0), NumberSequenceKeypoint.new(1, .3, 0) });
	return z;
end;
function K.applyFOV()
	if K.fovConn then
		K.fovConn:Disconnect();
	end;
	K.fovConn = z.RenderStepped:Connect(function()
			local T = workspace.CurrentCamera;
			if T then
				T.FieldOfView = K.fovValue;
			end;
		end);
end;
K.ragdollTimerThread = nil;
K.ragdollTimerRemaining = 0;
K.isRagdollActive = false;
function K.updateRagdollTimer(T)
	if K.ragdollTimerThread then
		task.cancel(K.ragdollTimerThread);
		K.ragdollTimerThread = nil;
	end;
	if T <= 0 then
		K.isRagdollActive = false;
		if K.headIndicator and K.headIndicator.ragdollTimer then
			K.headIndicator.ragdollTimer.Text = "";
		end;
		return;
	end;
	K.isRagdollActive = true;
	local l = tick();
	K.ragdollTimerRemaining = T;
	K.ragdollTimerThread = task.spawn(function()
			while K.isRagdollActive and K.ragdollTimerRemaining > 0 do
				local b = tick() - l;
				local z = math.max(0, T - b);
				K.ragdollTimerRemaining = z;
				if K.headIndicator and K.headIndicator.ragdollTimer then
					K.headIndicator.ragdollTimer.Text = string.format("%.1fs", z);
				end;
				if z <= 0 then
					K.isRagdollActive = false;
					if K.headIndicator and K.headIndicator.ragdollTimer then
						K.headIndicator.ragdollTimer.Text = "";
					end;
					break;
				end;
				task.wait(.05);
			end;
			K.ragdollTimerThread = nil;
		end);
end;
function K.onHumanoidStateChanged(T, l)
	local b = F.Character;
	if not b then
		return;
	end;
	local z = b:FindFirstChildOfClass("Humanoid");
	if not z then
		return;
	end;
	local q = (l == Enum.HumanoidStateType.Physics or l == Enum.HumanoidStateType.Ragdoll or l == Enum.HumanoidStateType.FallingDown);
	if q and not z.PlatformStand then
		K.updateRagdollTimer(2.6);
	end;
end;
function K.onMedusaStateChanged()
	local T = F.Character;
	if not T then
		return;
	end;
	local l = T:FindFirstChildOfClass("Humanoid");
	if l and l.PlatformStand then
		K.updateRagdollTimer(4.5);
	end;
end;
function K.setupRagdollTriggers()
	local T = F.Character;
	if not T then
		return;
	end;
	local l = T:FindFirstChildOfClass("Humanoid");
	if l then
		l.StateChanged:Connect(K.onHumanoidStateChanged);
		(l:GetPropertyChangedSignal("PlatformStand")):Connect(K.onMedusaStateChanged);
	end;
end;
function K.waitForAnimate(T)
	for l = 1, 40, 1 do
		local b = T:FindFirstChild("Animate");
		if b and (b:FindFirstChild("idle") and (b:FindFirstChild("run") and b:FindFirstChild("walk"))) then
			return b;
		end;
		task.wait(.1);
	end;
	return nil;
end;
function K.setAnim(T, l)
	if T and l then
		T.AnimationId = "rbxassetid://" .. tostring(l);
	end;
end;
function K.stopAllTracks(T)
	if not T then
		return;
	end;
	for T, l in ipairs(T:GetPlayingAnimationTracks()) do
		pcall(function()
			l:Stop(0);
		end);
	end;
end;
function K.ensureAnim(T, l)
	if not T then
		return nil;
	end;
	local b = T:FindFirstChild(l);
	if not b then
		b = Instance.new("Animation");
		b.Name = l;
		b.Parent = T;
	end;
	return b;
end;
function K.ensureIdleSlots(T, l)
	if not T then
		return;
	end;
	l = l or 2;
	for l = 1, l, 1 do
		K.ensureAnim(T, "Animation" .. l);
	end;
end;
function K.pick(T, ...)
	for l = 1, select("#", ...), 1 do
		local b = select(l, ...);
		local z = T[b];
		if z ~= nil then
			return z;
		end;
	end;
	return nil;
end;
function K.saveOriginalAnimate(T)
	if not T then
		return;
	end;
	if K.savedAnimate then
		return;
	end;
	local l = T:FindFirstChild("Animate");
	if l then
		K.savedAnimate = l:Clone();
	end;
end;
function K.restoreOriginalAnimate(T)
	if not T then
		return;
	end;
	local l = T:FindFirstChildOfClass("Humanoid");
	if l then
		K.stopAllTracks(l);
	end;
	local b = T:FindFirstChild("Animate");
	if b then
		b:Destroy();
	end;
	if K.savedAnimate then
		local l = K.savedAnimate:Clone();
		l.Parent = T;
		l.Disabled = true;
		task.wait(.06);
		l.Disabled = false;
	else
 
	end;
end;
function K.resetAnimations(T)
	if not T then
		return;
	end;
	K.restoreOriginalAnimate(T);
end;
local v = false;
function K.applyAnimPack(T)
	if not K.animPackEnabled then
		local T = F.Character;
		if T then
			K.resetAnimations(T);
		end;
		return false;
	end;
	if v then
		return false;
	end;
	v = true;
	local l = K.PACKS[T];
	if not l then
		v = false;
		return false;
	end;
	local b = F.Character or F.CharacterAdded:Wait();
	K.saveOriginalAnimate(b);
	local z = K.waitForAnimate(b);
	if not z then
		v = false;
		return false;
	end;
	local q = b:FindFirstChildOfClass("Humanoid");
	K.stopAllTracks(q);
	local P = K.ensureAnim(z:FindFirstChild("run"), "RunAnim");
	local R = K.ensureAnim(z:FindFirstChild("walk"), "WalkAnim");
	local W = K.ensureAnim(z:FindFirstChild("jump"), "JumpAnim");
	local i = K.ensureAnim(z:FindFirstChild("fall"), "FallAnim");
	local O = K.ensureAnim(z:FindFirstChild("climb"), "ClimbAnim");
	local p = K.ensureAnim(z:FindFirstChild("swim"), "Swim");
	local Z = K.ensureAnim(z:FindFirstChild("swimidle"), "SwimIdle");
	local f = z:FindFirstChild("idle");
	K.setAnim(R, K.pick(l, "WalkAnim", "Walk"));
	K.setAnim(P, K.pick(l, "RunAnim", "Run"));
	K.setAnim(W, K.pick(l, "JumpAnim", "Jump"));
	K.setAnim(i, K.pick(l, "FallAnim", "Fall"));
	K.setAnim(O, K.pick(l, "ClimbAnim", "Climb"));
	K.setAnim(p, K.pick(l, "Swim"));
	K.setAnim(Z, K.pick(l, "SwimIdle") or K.pick(l, "Swim"));
	if f then
		local T = K.pick(l, "Animation1");
		local b = K.pick(l, "Animation2");
		if T or b then
			K.ensureIdleSlots(f, 2);
			local l = T or b;
			local z = b or T or l;
			K.setAnim(f:FindFirstChild("Animation1"), l);
			K.setAnim(f:FindFirstChild("Animation2"), z);
		elseif l.Idle and #l.Idle > 0 then
			K.ensureIdleSlots(f, math.max(2, #l.Idle));
			K.setAnim(f:FindFirstChild("Animation1"), l.Idle[1]);
			K.setAnim(f:FindFirstChild("Animation2"), l.Idle[2] or l.Idle[1]);
			for T = 3, #l.Idle, 1 do
				local b = f:FindFirstChild("Animation" .. T);
				if b then
					K.setAnim(b, l.Idle[T]);
				end;
			end;
		end;
	end;
	z.Disabled = true;
	task.wait(.06);
	z.Disabled = false;
	if q then
		pcall(function()
			q:ChangeState(Enum.HumanoidStateType.Landed);
			task.wait(.03);
			q:ChangeState(Enum.HumanoidStateType.Running);
		end);
	end;
	K.animPack = T;
	v = false;
	return true;
end;
function K.getNearestBodyLockTarget()
	local l = F.Character;
	local b = l and l:FindFirstChild("HumanoidRootPart");
	if not b then
		return nil;
	end;
	local z = nil;
	local q = math.huge;
	for T, l in ipairs(T:GetPlayers()) do
		if l ~= F and l.Character then
			local T = l.Character:FindFirstChild("HumanoidRootPart");
			local P = l.Character:FindFirstChildOfClass("Humanoid");
			if T and (P and P.Health > 0) then
				local P = ((T.Position - b.Position)).Magnitude;
				if P <= K.bodyLockRadius and P < q then
					q = P;
					z = l;
				end;
			end;
		end;
	end;
	return z;
end;
function K.startBodyLock()
	if K.bodyLockConn then
		return;
	end;
	K.bodyLockEnabled = true;
	K.bodyLockConn = z.Heartbeat:Connect(function()
			if not K.bodyLockEnabled then
				return;
			end;
			local T = F.Character;
			local l = T and T:FindFirstChild("HumanoidRootPart");
			local b = T and T:FindFirstChildOfClass("Humanoid");
			if not l or not b or b.Health <= 0 then
				return;
			end;
			local z = K.getNearestBodyLockTarget();
			if z and (z.Character and z.Character:FindFirstChild("HumanoidRootPart")) then
				local T = z.Character.HumanoidRootPart.Position;
				local q = l.Position;
				local P = Vector3.new(T.X, q.Y, T.Z) - q;
				if P.Magnitude > .1 then
					b.AutoRotate = false;
					local T = P.Unit;
					local z = l.CFrame.LookVector;
					local q = z:Cross(T);
					local F = l.AssemblyAngularVelocity;
					l.AssemblyAngularVelocity = Vector3.new(F.X, q.Y * 40, F.Z);
				end;
			else
				b.AutoRotate = true;
			end;
		end);
end;
function K.stopBodyLock()
	K.bodyLockEnabled = false;
	if K.bodyLockConn then
		K.bodyLockConn:Disconnect();
		K.bodyLockConn = nil;
	end;
	local T = F.Character and F.Character:FindFirstChildOfClass("Humanoid");
	if T then
		T.AutoRotate = true;
	end;
end;
function K.toggleBodyLock()
	K.bodyLockEnabled = not K.bodyLockEnabled;
	if K.bodyLockEnabled then
		K.startBodyLock();
	else
		K.stopBodyLock();
	end;
	if K.setBodyLockVisual then
		K.setBodyLockVisual(K.bodyLockEnabled);
	end;
	saveLuaStudioConfig();
	return K.bodyLockEnabled;
end;
function K.createPlayerSpeedGui(T)
	if T == F then
		return;
	end;
	if K.playerSpeedGuis[T] then
		return;
	end;
	local l = T.Character;
	if not l then
		return;
	end;
	local b = l:FindFirstChild("Head");
	if not b then
		return;
	end;
	local z = b:FindFirstChild("MoveePlayerSpeedBB");
	if z then
		z:Destroy();
	end;
	local q = Instance.new("BillboardGui");
	q.Name = "MoveePlayerSpeedBB";
	q.Size = UDim2.new(0, 80, 0, 24);
	q.StudsOffset = Vector3.new(0, 2.2, 0);
	q.AlwaysOnTop = true;
	q.Adornee = b;
	q.Parent = b;
	local P = Instance.new("TextLabel", q);
	P.Size = UDim2.new(1, 0, 1, 0);
	P.BackgroundTransparency = 1;
	P.Text = "0";
	P.TextColor3 = Z;
	P.Font = Enum.Font.GothamBold;
	P.TextScaled = true;
	P.TextStrokeTransparency = 0;
	K.addShimmerToLabel(P, Z, Color3.fromRGB(255, 255, 255));
	local R;
	R = l.AncestryChanged:Connect(function(l, b)
			if not b then
				K.removePlayerSpeedGui(T);
				if R then
					R:Disconnect();
				end;
			end;
		end);
	K.playerSpeedGuis[T] = { gui = q, label = P, conn = R };
end;
function K.removePlayerSpeedGui(T)
	local l = K.playerSpeedGuis[T];
	if l then
		if l.conn then
			l.conn:Disconnect();
		end;
		if l.gui then
			l.gui:Destroy();
		end;
		K.playerSpeedGuis[T] = nil;
	end;
end;
function K.updatePlayerSpeed(T)
	if not K.showPlayerSpeeds then
		return;
	end;
	local l = K.playerSpeedGuis[T];
	if not l then
		return;
	end;
	local b = T.Character;
	if not b then
		K.removePlayerSpeedGui(T);
		return;
	end;
	local z = b:FindFirstChild("HumanoidRootPart");
	if not z then
		return;
	end;
	local q = (Vector3.new(z.Velocity.X, 0, z.Velocity.Z)).Magnitude;
	l.label.Text = string.format("%.1f", q);
end;
function K.updateAllPlayerSpeeds()
	for T, l in pairs(K.playerSpeedGuis) do
		K.updatePlayerSpeed(T);
	end;
end;
function K.startPlayerSpeedUpdates()
	if K.playerSpeedUpdateConn then
		return;
	end;
	K.playerSpeedUpdateConn = z.Heartbeat:Connect(function()
			K.updateAllPlayerSpeeds();
		end);
end;
function K.stopPlayerSpeedUpdates()
	if K.playerSpeedUpdateConn then
		K.playerSpeedUpdateConn:Disconnect();
		K.playerSpeedUpdateConn = nil;
	end;
end;
function K.togglePlayerSpeeds(l)
	K.showPlayerSpeeds = l;
	if l then
		for T, l in ipairs(T:GetPlayers()) do
			if l ~= F then
				K.createPlayerSpeedGui(l);
			end;
		end;
		K.startPlayerSpeedUpdates();
	else
		for T, l in pairs(K.playerSpeedGuis) do
			K.removePlayerSpeedGui(T);
		end;
		K.stopPlayerSpeedUpdates();
	end;
end;
function K.addESP(T)
	if T == F then
		return;
	end;
	if K.espList[T] then
		return;
	end;
	local l = T.Character;
	if not l then
		return;
	end;
	local b = l:FindFirstChild("Head");
	if not b then
		return;
	end;
	local z = Instance.new("BillboardGui");
	z.Size = UDim2.new(0, 120, 0, 30);
	z.StudsOffset = Vector3.new(0, 2.8, 0);
	z.AlwaysOnTop = true;
	z.Adornee = b;
	z.Parent = b;
	local q = Instance.new("TextLabel", z);
	q.Size = UDim2.new(1, 0, 1, 0);
	q.BackgroundTransparency = 1;
	q.Text = T.Name;
	q.TextColor3 = Color3.fromRGB(255, 255, 255);
	q.Font = Enum.Font.GothamBold;
	q.TextScaled = true;
	q.TextStrokeTransparency = 0;
	q.TextStrokeColor3 = Color3.fromRGB(0, 0, 0);
	local P = Instance.new("Highlight");
	P.Adornee = l;
	P.FillTransparency = 1;
	P.OutlineTransparency = .3;
	P.OutlineColor = Color3.fromRGB(255, 255, 255);
	P.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
	P.Parent = l;
	K.espList[T] = { nameBB = z, highlight = P };
end;
function K.removeESP(T)
	local l = K.espList[T];
	if l then
		if l.nameBB then
			l.nameBB:Destroy();
		end;
		if l.highlight then
			l.highlight:Destroy();
		end;
		K.espList[T] = nil;
	end;
end;
function K.clearESP()
	for T, l in pairs(K.espList) do
		K.removeESP(T);
	end;
end;
function K.toggleESP(l)
	K.playerESPEnabled = l;
	if l then
		for T, l in ipairs(T:GetPlayers()) do
			if l ~= F then
				K.addESP(l);
			end;
		end;
		if not K._espPlayerAdded then
			K._espPlayerAdded = T.PlayerAdded:Connect(function(T)
					if T ~= F and K.playerESPEnabled then
						T.CharacterAdded:Connect(function()
							task.wait(.5);
							K.addESP(T);
						end);
						if T.Character then
							task.wait(.5);
							K.addESP(T);
						end;
					end;
				end);
			K.trackConn(K._espPlayerAdded);
		end;
		if not K._espPlayerRemoved then
			K._espPlayerRemoved = T.PlayerRemoving:Connect(function(T)
					K.removeESP(T);
				end);
			K.trackConn(K._espPlayerRemoved);
		end;
	else
		K.clearESP();
		if K._espPlayerAdded then
			K._espPlayerAdded:Disconnect();
			K._espPlayerAdded = nil;
		end;
		if K._espPlayerRemoved then
			K._espPlayerRemoved:Disconnect();
			K._espPlayerRemoved = nil;
		end;
	end;
end;
K.headIndicator = nil;
function K.setupHeadIndicator(T)
	local l = T:WaitForChild("Head", 5);
	if not l then
		return;
	end;
	if l:FindFirstChild("MoveeHeadIndicator") then
		l.MoveeHeadIndicator:Destroy();
	end;
	local b = Instance.new("BillboardGui", l);
	b.Name = "MoveeHeadIndicator";
	b.Size = UDim2.new(0, 250, 0, 90);
	b.StudsOffset = Vector3.new(0, 3.5, 0);
	b.AlwaysOnTop = true;
	b.Parent = l;
	local z = Z;
	local q = Instance.new("TextLabel", b);
	q.Name = "RagdollTimer";
	q.Size = UDim2.new(1, 0, .33, 0);
	q.Position = UDim2.new(0, 0, 0, 0);
	q.BackgroundTransparency = 1;
	q.Text = "";
	q.TextColor3 = z;
	q.Font = Enum.Font.GothamBold;
	q.TextScaled = true;
	q.TextStrokeTransparency = 0;
	local P = Instance.new("TextLabel", b);
	P.Name = "Discord";
	P.Size = UDim2.new(1, 0, .33, 0);
	P.Position = UDim2.new(0, 0, .33, 0);
	P.BackgroundTransparency = 1;
	P.Text = "discord.gg/PZacXu6Sv2";
	P.TextColor3 = z;
	P.Font = Enum.Font.GothamBold;
	P.TextScaled = true;
	P.TextStrokeTransparency = 0;
	local F = Instance.new("TextLabel", b);
	F.Name = "Speed";
	F.Size = UDim2.new(1, 0, .33, 0);
	F.Position = UDim2.new(0, 0, .66, 0);
	F.BackgroundTransparency = 1;
	F.Text = "0.0";
	F.TextColor3 = Color3.fromRGB(255, 255, 255);
	F.Font = Enum.Font.GothamBold;
	F.TextScaled = true;
	F.TextStrokeTransparency = 0;
	K.headIndicator = {
			bb = b,
			discord = P,
			speed = F,
			ragdollTimer = q,
		};
	K.updateHeadTheme();
end;
function K.updateHeadTheme()
	if not K.headIndicator then
		return;
	end;
	local T = Z;
	if K.headIndicator.discord then
		K.headIndicator.discord.TextColor3 = T;
	end;
	if K.headIndicator.speed then
		K.headIndicator.speed.TextColor3 = Color3.fromRGB(255, 255, 255);
	end;
	if K.headIndicator.ragdollTimer then
		K.headIndicator.ragdollTimer.TextColor3 = T;
	end;
end;
local N = nil;
function K.startHeadSpeedUpdates()
	if N then
		return;
	end;
	N = z.Heartbeat:Connect(function()
			local T = F.Character;
			if T and (K.headIndicator and K.headIndicator.speed) then
				local T;
				if K.autoLeftEnabled or K.autoRightEnabled then
					T = K.NS;
				else
					T = K.getActiveMoveSpeed();
				end;
				K.headIndicator.speed.Text = string.format("%.1f", T);
			end;
		end);
end;
function K.stopHeadSpeedUpdates()
	if N then
		N:Disconnect();
		N = nil;
	end;
end;
function K.buildStatusUI()
	if K.statusGui then
		pcall(function()
			K.statusGui:Destroy();
		end);
		K.statusGui = nil;
	end;
	local T = Instance.new("ScreenGui");
	T.Name = "K7_StatusUI";
	T.ResetOnSpawn = false;
	T.IgnoreGuiInset = true;
	T.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	do
		local l = false;
		if gethui then
			l = pcall(function()
					T.Parent = gethui();
				end);
		elseif syn and syn.protect_gui then
			l = pcall(function()
					syn.protect_gui(T);
					T.Parent = game:GetService("CoreGui");
				end);
		end;
		if not l then
			T.Parent = F:WaitForChild("PlayerGui");
		end;
	end;
	for l, b in ipairs(T.Parent:GetChildren()) do
		if b ~= T and (b:IsA("ScreenGui") and b.Name == T.Name) then
			b:Destroy();
		end;
	end;
	local l = {
			bg = Color3.fromRGB(10, 10, 10),
			stroke = Color3.fromRGB(255, 255, 255),
			white = Color3.fromRGB(255, 255, 255),
			grey = Color3.fromRGB(170, 170, 170),
			track = Color3.fromRGB(42, 42, 42),
			dotBg = Color3.fromRGB(85, 85, 85),
		};
	local q = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic);
	local R = Z;
	local W = 37;
	local i = 420;
	local O = Instance.new("Frame");
	O.Size = UDim2.fromOffset(i, W);
	local p = (K.loadBtnPositions and K.loadBtnPositions()) or {};
	if p._stealbar then
		local T = p._stealbar;
		O.AnchorPoint = Vector2.new(0, 0);
		O.Position = UDim2.new(T.xs or 0, T.xo or 0, T.ys or 0, T.yo or 0);
	else
		O.AnchorPoint = Vector2.new(.5, 0);
		O.Position = UDim2.new(.5, 0, 0, 10);
	end;
	O.BackgroundColor3 = Color3.fromRGB(12, 12, 12);
	O.BorderSizePixel = 0;
	O.Active = true;
	O.Parent = T;
	(Instance.new("UICorner", O)).CornerRadius = UDim.new(1, 0);
	local f = Instance.new("UIStroke", O);
	f.Color = R;
	f.Thickness = 1.5;
	f.Transparency = .2;
	local Y = Instance.new("UIScale");
	Y.Scale = K.stealBarScale or 1;
	Y.Parent = O;
	K.stealBarScaleRef = Y;
	local E = 5;
	local y = 8;
	local e = E;
	local s, d = 78, 90;
	local M = 28;
	local w = ((((s + y) + d) + y) + M) + E;
	local Q = ((i - E) - y) - w;
	if Q < 110 then
		Q = 110;
		i = ((E + Q) + y) + w;
		O.Size = UDim2.fromOffset(i, W);
	end;
	local u = math.floor(((W - 8)) / 2);
	local k = Instance.new("Frame");
	k.Size = UDim2.new(0, Q, 1, -8);
	k.Position = UDim2.fromOffset(e, 4);
	k.BackgroundColor3 = Color3.fromRGB(20, 20, 20);
	k.BorderSizePixel = 0;
	k.ClipsDescendants = true;
	k.Parent = O;
	(Instance.new("UICorner", k)).CornerRadius = UDim.new(0, u);
	local v = Instance.new("Frame");
	v.Size = UDim2.new(0, 0, 1, 0);
	v.Position = UDim2.fromOffset(0, 0);
	v.BackgroundColor3 = Color3.fromRGB(255, 221, 0);
	v.BorderSizePixel = 0;
	v.ZIndex = 2;
	v.Parent = k;
	(Instance.new("UICorner", v)).CornerRadius = UDim.new(0, u);
	K.statusFill = v;
	K._stealPillW = Q;
	local N = Instance.new("TextLabel");
	N.BackgroundTransparency = 1;
	N.Position = UDim2.fromOffset(16, 0);
	N.Size = UDim2.new(0, 90, 1, 0);
	N.Font = Enum.Font.GothamBlack;
	N.TextSize = 15;
	N.TextColor3 = Color3.fromRGB(255, 255, 255);
	N.TextXAlignment = Enum.TextXAlignment.Left;
	N.Text = "STEAL";
	N.ZIndex = 4;
	N.Parent = k;
	local A = Instance.new("TextLabel");
	A.BackgroundTransparency = 1;
	A.AnchorPoint = Vector2.new(1, 0);
	A.Position = UDim2.new(1, -16, 0, 0);
	A.Size = UDim2.fromOffset(60, W - 8);
	A.Font = Enum.Font.GothamBlack;
	A.TextSize = 15;
	A.TextColor3 = Color3.fromRGB(255, 255, 255);
	A.TextXAlignment = Enum.TextXAlignment.Right;
	A.Text = "0%";
	A.ZIndex = 4;
	A.Parent = k;
	K.statusPctLbl = A;
	e = (e + Q) + y;
	local function H(T, l, b, z)
		local q = Instance.new("Frame");
		q.Size = UDim2.new(0, l, 1, -14);
		q.Position = UDim2.new(0, T, .5, 0);
		q.AnchorPoint = Vector2.new(0, .5);
		q.BackgroundColor3 = Color3.fromRGB(20, 20, 20);
		q.BackgroundTransparency = .15;
		q.BorderSizePixel = 0;
		q.Parent = O;
		(Instance.new("UICorner", q)).CornerRadius = UDim.new(1, 0);
		local P = Instance.new("UIStroke", q);
		P.Color = R;
		P.Thickness = 1.2;
		P.Transparency = .3;
		local F = Instance.new("TextLabel", q);
		F.BackgroundTransparency = 1;
		F.Size = UDim2.new(1, -12, 1, 0);
		F.Position = UDim2.fromOffset(8, 0);
		F.Font = Enum.Font.GothamBold;
		F.TextSize = 12;
		F.TextXAlignment = Enum.TextXAlignment.Center;
		F.RichText = true;
		F.Text = (("<font color=\"#8fb8ff\">%s</font> <b>%s</b>")):format(b, z);
		F.TextColor3 = Color3.fromRGB(255, 255, 255);
		return F;
	end;
	local o = H(e, s, "FPS", "0");
	e = (e + s) + y;
	local r = H(e, d, "PING", "0 ms");
	e = (e + d) + y;
	local B = { fps = o, ping = r };
	K.statusFpsLbl = B;
	local C = Instance.new("Frame");
	C.Size = UDim2.fromOffset(28, 28);
	C.Position = UDim2.new(1, -E, .5, 0);
	C.AnchorPoint = Vector2.new(1, .5);
	C.BackgroundColor3 = Color3.fromRGB(20, 20, 20);
	C.BorderSizePixel = 0;
	C.Parent = O;
	(Instance.new("UICorner", C)).CornerRadius = UDim.new(1, 0);
	local I = Instance.new("UIStroke", C);
	I.Color = R;
	I.Thickness = 1.2;
	I.Transparency = .3;
	local x = Instance.new("Frame");
	x.Size = UDim2.fromOffset(15, 15);
	x.AnchorPoint = Vector2.new(.5, .5);
	x.Position = UDim2.fromScale(.5, .5);
	x.BackgroundColor3 = R;
	x.BorderSizePixel = 0;
	x.Parent = C;
	(Instance.new("UICorner", x)).CornerRadius = UDim.new(1, 0);
	K.statusDot = x;
	local n = 0;
	local t = 0;
	local m = 0;
	if K._statusFpsConn then
		pcall(function()
			K._statusFpsConn:Disconnect();
		end);
		K._statusFpsConn = nil;
	end;
	K._statusFpsConn = z.RenderStepped:Connect(function(T)
			n = n + 1;
			t = t + T;
			if t >= .5 then
				m = math.floor(n / t + .5);
				n = 0;
				t = 0;
				local T = 0;
				pcall(function()
					T = math.floor(F:GetNetworkPing() * 1000 + .5);
				end);
				if o and o.Parent then
					o.Text = (("<font color=\"#8fb8ff\">FPS</font> <b>%d</b>")):format(m);
				end;
				if r and r.Parent then
					r.Text = (("<font color=\"#8fb8ff\">PING</font> <b>%d ms</b>")):format(T);
				end;
			end;
		end);
	local function L()
		if type(writefile) ~= "function" then
			return;
		end;
		local T = (K.loadBtnPositions and K.loadBtnPositions()) or {};
		T._stealbar = {
				xs = O.Position.X.Scale,
				xo = O.Position.X.Offset,
				ys = O.Position.Y.Scale,
				yo = O.Position.Y.Offset,
			};
		pcall(function()
			writefile(K.MOB_POS_FILE, P:JSONEncode(T));
		end);
	end;
	do
		local T, l, z;
		O.InputBegan:Connect(function(b)
			if b.UserInputType == Enum.UserInputType.MouseButton1 or b.UserInputType == Enum.UserInputType.Touch then
				if O.AnchorPoint ~= Vector2.new(0, 0) then
					local T = O.AbsolutePosition;
					O.AnchorPoint = Vector2.new(0, 0);
					O.Position = UDim2.fromOffset(T.X, T.Y);
				end;
				T = true;
				l = b.Position;
				z = O.Position;
				b.Changed:Connect(function()
					if b.UserInputState == Enum.UserInputState.End then
						T = false;
						L();
					end;
				end);
			end;
		end);
		b.InputChanged:Connect(function(b)
			if T and ((b.UserInputType == Enum.UserInputType.MouseMovement or b.UserInputType == Enum.UserInputType.Touch)) then
				local T = b.Position - l;
				O.Position = UDim2.new(z.X.Scale, z.X.Offset + T.X, z.Y.Scale, z.Y.Offset + T.Y);
			end;
		end);
	end;
	K.statusGui = T;
	K.statusMain = O;
end;
function K.updateStealProgress(T)
	T = math.clamp(T or 0, 0, 1);
	local l = math.floor(T * 100);
	if K.statusFill then
		K.statusFill.Size = UDim2.fromScale(T, 1);
		K.statusFill.Visible = T > 0;
	end;
	if K.statusPctLbl then
		K.statusPctLbl.Text = l .. "%";
	end;
end;
if K._semiBarConn then
	pcall(function()
		K._semiBarConn:Disconnect();
	end);
	K._semiBarConn = nil;
end;
K._semiBarShown = 0;
K._semiBarConn = z.Heartbeat:Connect(function()
		if K.stealMode ~= "Semi" then
			return;
		end;
		if not K.statusFill or not K.statusPctLbl then
			return;
		end;
		local T = K.Semi and K.Semi.StealState;
		if not T then
			return;
		end;
		local l = T.active;
		local b = T.lastResultTime and (T.lastResultTime > 0 and (tick() - T.lastResultTime) < 1);
		if l then
			local l = math.max(K.Semi.HoldMax or 2.6, .01);
			local b = math.clamp(((tick() - ((T.startTime or tick())))) / l, 0, 1);
			K._semiBarShown = K._semiBarShown + ((b - K._semiBarShown)) * .25;
			local z = math.clamp(K._semiBarShown, 0, 1);
			K.statusFill.Visible = true;
			K.statusFill.Size = UDim2.fromScale(z, 1);
			K.statusPctLbl.Text = math.floor(z * 100) .. "%";
		elseif b then
			K._semiBarShown = K._semiBarShown + ((1 - K._semiBarShown)) * .3;
			local T = math.clamp(K._semiBarShown, 0, 1);
			K.statusFill.Visible = true;
			K.statusFill.Size = UDim2.fromScale(T, 1);
			K.statusPctLbl.Text = math.floor(T * 100) .. "%";
		else
			K._semiBarShown = 0;
			K.statusFill.Visible = false;
			K.statusFill.Size = UDim2.fromScale(0, 1);
			K.statusPctLbl.Text = "0%";
		end;
	end);
function K.updateStatusRadius()
 
end;
if not fireproximityprompt then
	fireproximityprompt = (getgenv and (getgenv()).fireproximityprompt) or (genv and (genv()).fireproximityprompt) or function(T)
			pcall(function()
				T:InputHoldBegin();
				task.wait(.05);
				T:InputHoldEnd();
			end);
		end;
end;
local function A(T)
	local l = workspace:FindFirstChild("Plots");
	if not l then
		return false;
	end;
	local b = l:FindFirstChild(T);
	if not b then
		return false;
	end;
	local z = b:FindFirstChild("PlotSign");
	if z then
		local T = z:FindFirstChild("YourBase");
		if T and T:IsA("BillboardGui") then
			return T.Enabled == true;
		end;
	end;
	return false;
end;
local function H(T)
	if not T or not T:IsA("Model") then
		return;
	end;
	if A(T.Name) then
		return;
	end;
	local l = T:FindFirstChild("AnimalPodiums");
	if not l then
		return;
	end;
	for l, b in ipairs(l:GetChildren()) do
		if b:IsA("Model") and b:FindFirstChild("Base") then
			local l = T.Name .. ("_" .. b.Name);
			for T, b in ipairs(K.animalCache) do
				if b.uid == l then
					return;
				end;
			end;
			table.insert(K.animalCache, {
				name = b.Name,
				plot = T.Name,
				slot = b.Name,
				worldPosition = (b:GetPivot()).Position,
				uid = l,
			});
		end;
	end;
end;
local function o(T)
	if not T then
		return nil;
	end;
	local l = K.promptCache[T.uid];
	if l and l.Parent then
		return l;
	end;
	local b = workspace:FindFirstChild("Plots");
	if not b then
		return nil;
	end;
	local z = b:FindFirstChild(T.plot);
	if not z then
		return nil;
	end;
	local q = z:FindFirstChild("AnimalPodiums");
	if not q then
		return nil;
	end;
	local P = q:FindFirstChild(T.slot);
	if not P then
		return nil;
	end;
	local F = P:FindFirstChild("Base");
	if not F then
		return nil;
	end;
	local R = F:FindFirstChild("Spawn");
	if not R then
		return nil;
	end;
	local W = R:FindFirstChild("PromptAttachment");
	local i = nil;
	if W then
		for T, l in ipairs(W:GetChildren()) do
			if l:IsA("ProximityPrompt") then
				i = l;
				break;
			end;
		end;
	end;
	if not i then
		for T, l in ipairs(R:GetDescendants()) do
			if l:IsA("ProximityPrompt") then
				i = l;
				break;
			end;
		end;
	end;
	if i then
		K.promptCache[T.uid] = i;
	end;
	return i;
end;
local function r()
	local T = F.Character;
	if not T then
		return nil;
	end;
	local l = T:FindFirstChild("HumanoidRootPart") or T:FindFirstChild("UpperTorso");
	if not l then
		return nil;
	end;
	local b, z = nil, math.huge;
	for T, q in ipairs(K.animalCache) do
		if not A(q.plot) and q.worldPosition then
			local T = ((l.Position - q.worldPosition)).Magnitude;
			if T < z then
				z = T;
				b = q;
			end;
		end;
	end;
	return b, z;
end;
local function B(T)
	if K.stealCache[T] then
		return;
	end;
	local l = { holdCallbacks = {}, triggerCallbacks = {}, ready = true };
	local b, z = pcall(getconnections, T.PromptButtonHoldBegan);
	if b and type(z) == "table" then
		for T, b in ipairs(z) do
			if type(b.Function) == "function" then
				table.insert(l.holdCallbacks, b.Function);
			end;
		end;
	end;
	local q, P = pcall(getconnections, T.Triggered);
	if q and type(P) == "table" then
		for T, b in ipairs(P) do
			if type(b.Function) == "function" then
				table.insert(l.triggerCallbacks, b.Function);
			end;
		end;
	end;
	if #l.holdCallbacks > 0 or #l.triggerCallbacks > 0 then
		K.stealCache[T] = l;
	end;
end;
local function C(T, l)
	local b = K.stealCache[T];
	if not b or not b.ready then
		return false;
	end;
	b.ready = false;
	K.isStealing = true;
	K.stealStartTime = tick();
	K.updateStealProgress(.1);
	if K.progressConn then
		K.progressConn:Disconnect();
	end;
	K.progressConn = z.Heartbeat:Connect(function()
			if not K.isStealing then
				K.progressConn:Disconnect();
				K.progressConn = nil;
				return;
			end;
			local T = math.clamp(((tick() - K.stealStartTime)) / K.Steal.StealDuration, 0, 1);
			K.updateStealProgress(T);
		end);
	task.spawn(function()
		for T, l in ipairs(b.holdCallbacks) do
			task.spawn(l);
		end;
		local T = 0;
		while T < K.Steal.StealDuration do
			T = T + task.wait();
		end;
		for T, l in ipairs(b.triggerCallbacks) do
			task.spawn(l);
		end;
		task.wait(.01);
		if K.progressConn then
			K.progressConn:Disconnect();
			K.progressConn = nil;
		end;
		K.isStealing = false;
		K.updateStealProgress(0);
		b.ready = true;
	end);
	return true;
end;
function K.startNormalSteal()
	if K.stealConn then
		return;
	end;
	K.stealConn = z.Heartbeat:Connect(function()
			if not K.Steal.AutoStealEnabled or K.stealMode ~= "Normal" or K.isStealing then
				return;
			end;
			local T, l = r();
			if not T then
				return;
			end;
			if l > K.Steal.StealRadius then
				return;
			end;
			local b = K.promptCache[T.uid];
			if not b or not b.Parent then
				b = o(T);
			end;
			if b then
				B(b);
				C(b, T.name);
			end;
		end);
end;
function K.stopNormalSteal()
	if K.stealConn then
		K.stealConn:Disconnect();
		K.stealConn = nil;
	end;
	K.isStealing = false;
	if K.progressConn then
		K.progressConn:Disconnect();
		K.progressConn = nil;
	end;
	K.updateStealProgress(0);
end;
K.Semi = K.Semi or {};
K.Semi.HoldMin = 1.3;
K.Semi.HoldMax = 2.6;
K.Semi.EntryDelay = .3;
K.Semi.Cooldown = .05;
K.Semi.StealRange = 9;
K.Semi.PrimeRange = 80;
K.Semi.allAnimalsCache = {};
K.Semi.PromptMemoryCache = {};
K.Semi.InternalStealCache = {};
K.Semi.stealConnection = nil;
K.Semi.StealState = {
		active = false,
		startTime = 0,
		phase = "idle",
		label = "",
		lastResult = "",
		lastResultTime = 0,
		totalSteals = 0,
		failedSteals = 0,
	};
K.Semi.plots = workspace:WaitForChild("Plots");
K.Semi.AnimalsData = nil;
K.Semi.initialized = false;
function K.initSemiSync()
	if K.Semi.initialized then
		return;
	end;
	local T = game:GetService("ReplicatedStorage");
	local l = T:WaitForChild("Packages");
	local b = T:WaitForChild("Datas");
	K.Semi.AnimalsData = require(b:WaitForChild("Animals"));
	local z = l:WaitForChild("Synchronizer");
	K.Semi.syncRemotes = { channelFolder = z:WaitForChild("Channel"), routeRemote = z:WaitForChild("CommunicationRoute"), requestData = z:FindFirstChild("RequestData") };
	local function q(T)
		if typeof(T) == "table" then
			return T;
		end;
		local l = {};
		for T in string.gmatch(tostring(T), "[^%.]+") do
			table.insert(l, tonumber(T) or T);
		end;
		return l;
	end;
	local function P(T, l)
		local b = l;
		local z = nil;
		local P = nil;
		for T, l in ipairs(q(T)) do
			z = b;
			P = l;
			b = b and b[l] or nil;
		end;
		return b, z, P;
	end;
	local function F(T, l)
		local b = K.Semi.plotAnimalSync.caches[T];
		if typeof(b) ~= "table" then
			return;
		end;
		local z, q, F, R = l[1], l[2], l[3], l[4];
		local W, i, O = P(z, b);
		if q == "Changed" then
			if i ~= nil then
				i[O] = F;
			end;
		elseif q == "ArrayInsert" then
			if W ~= nil then
				table.insert(W, R, F);
			end;
		elseif q == "ArrayRemoved" then
			if W ~= nil then
				table.remove(W, R);
			end;
		elseif q == "DictionaryInsert" then
			if W ~= nil then
				W[R] = F;
			end;
		elseif q == "DictionaryRemoved" then
			if W ~= nil then
				W[R] = nil;
			end;
		end;
	end;
	local function R(T)
		if K.Semi.plotAnimalSync.connections[T] then
			return;
		end;
		local l = tostring(T.Name);
		if not K.Semi.plots:FindFirstChild(l) then
			return;
		end;
		if K.Semi.syncRemotes.requestData and K.Semi.plotAnimalSync.caches[l] == nil then
			local T, b = pcall(function()
					return K.Semi.syncRemotes.requestData:InvokeServer(l);
				end);
			if T and typeof(b) == "table" then
				K.Semi.plotAnimalSync.caches[l] = b;
			else
				K.Semi.plotAnimalSync.caches[l] = {};
			end;
		elseif K.Semi.plotAnimalSync.caches[l] == nil then
			K.Semi.plotAnimalSync.caches[l] = {};
		end;
		K.Semi.plotAnimalSync.connections[T] = T.OnClientEvent:Connect(function(T)
				for T, b in ipairs(T) do
					F(l, b);
				end;
			end);
	end;
	local function W(T)
		for l, b in pairs(K.Semi.plotAnimalSync.connections) do
			if tostring(l.Name) == tostring(T) then
				b:Disconnect();
				K.Semi.plotAnimalSync.connections[l] = nil;
				K.Semi.plotAnimalSync.caches[tostring(T)] = nil;
				break;
			end;
		end;
	end;
	for T, l in ipairs(K.Semi.syncRemotes.channelFolder:GetChildren()) do
		if l:IsA("RemoteEvent") then
			R(l);
		end;
	end;
	K.Semi.syncRemotes.channelFolder.ChildAdded:Connect(function(T)
		if T:IsA("RemoteEvent") then
			R(T);
		end;
	end);
	K.Semi.syncRemotes.routeRemote.OnClientEvent:Connect(function(T)
		for T, l in ipairs(T) do
			local b, z = l[1], tostring(l[2]);
			if not K.Semi.plots:FindFirstChild(z) then
				continue;
			end;
			if b == "ListenerAdded" then
				local T = K.Semi.syncRemotes.channelFolder:FindFirstChild(z);
				if T and T:IsA("RemoteEvent") then
					R(T);
				end;
			elseif b == "ListenerRemoved" then
				W(z);
			end;
		end;
	end);
	K.Semi.initialized = true;
end;
function K.getPlotChannelData(T)
	return K.Semi.plotAnimalSync.caches[T];
end;
function K.getPlotOwner(T)
	local l = T:FindFirstChild("PlotSign");
	local b = l and (l:FindFirstChild("SurfaceGui") and l.SurfaceGui:FindFirstChild("Frame"));
	local z = b and b:FindFirstChild("TextLabel");
	if not z or z.Text == "Empty Base" then
		return nil;
	end;
	return (z.Text:gsub("\'s [Bb]ase$", "")):gsub("%s+$", "");
end;
function K.isMyBaseAnimalSemi(T)
	if not T or not T.plot then
		return false;
	end;
	local l = K.Semi.plots:FindFirstChild(T.plot);
	if not l then
		return false;
	end;
	return K.getPlotOwner(l) == F.DisplayName;
end;
function K.findProximityPromptForAnimalSemi(T)
	if not T then
		return nil;
	end;
	local l = K.Semi.PromptMemoryCache[T.uid];
	if l and l.Parent then
		return l;
	end;
	local b = K.Semi.plots:FindFirstChild(T.plot);
	if not b then
		return nil;
	end;
	local z = b:FindFirstChild("AnimalPodiums");
	if not z then
		return nil;
	end;
	local q = z:FindFirstChild(T.slot);
	if not q then
		return nil;
	end;
	local P = q:FindFirstChild("Base");
	if not P then
		return nil;
	end;
	local F = P:FindFirstChild("Spawn");
	if not F then
		return nil;
	end;
	local R = F:FindFirstChild("PromptAttachment");
	if not R then
		return nil;
	end;
	for l, b in ipairs(R:GetChildren()) do
		if b:IsA("ProximityPrompt") then
			K.Semi.PromptMemoryCache[T.uid] = b;
			return b;
		end;
	end;
	return nil;
end;
function K.getAnimalPositionSemi(T)
	local l = K.Semi.plots:FindFirstChild(T.plot);
	if not l then
		return nil;
	end;
	local b = l:FindFirstChild("AnimalPodiums");
	if not b then
		return nil;
	end;
	local z = b:FindFirstChild(T.slot);
	if not z then
		return nil;
	end;
	return (z:GetPivot()).Position;
end;
function K.distToAnimalSemi(T)
	local l = F.Character;
	if not l then
		return math.huge;
	end;
	local b = l:FindFirstChild("HumanoidRootPart") or l:FindFirstChild("UpperTorso");
	if not b then
		return math.huge;
	end;
	local z = K.getAnimalPositionSemi(T);
	if not z then
		return math.huge;
	end;
	return ((b.Position - z)).Magnitude;
end;
function K.pickClosestSemi()
	local T = F.Character;
	if not T then
		return nil;
	end;
	local l = T:FindFirstChild("HumanoidRootPart") or T:FindFirstChild("UpperTorso");
	if not l then
		return nil;
	end;
	local b, z = nil, math.huge;
	for T, q in ipairs(K.Semi.allAnimalsCache) do
		if K.isMyBaseAnimalSemi(q) then
			continue;
		end;
		local P = K.getAnimalPositionSemi(q);
		if not P then
			continue;
		end;
		local F = ((l.Position - P)).Magnitude;
		if F > K.Semi.PrimeRange then
			continue;
		end;
		if F < z then
			z = F;
			b = q;
		end;
	end;
	return b;
end;
function K.buildStealCallbacksSemi(T)
	if K.Semi.InternalStealCache[T] then
		return;
	end;
	local l = { holdCallbacks = {}, triggerCallbacks = {}, ready = true };
	local b, z = pcall(getconnections, T.PromptButtonHoldBegan);
	if b and type(z) == "table" then
		for T, b in ipairs(z) do
			if type(b.Function) == "function" then
				table.insert(l.holdCallbacks, b.Function);
			end;
		end;
	end;
	local q, P = pcall(getconnections, T.Triggered);
	if q and type(P) == "table" then
		for T, b in ipairs(P) do
			if type(b.Function) == "function" then
				table.insert(l.triggerCallbacks, b.Function);
			end;
		end;
	end;
	if #l.holdCallbacks > 0 or #l.triggerCallbacks > 0 then
		K.Semi.InternalStealCache[T] = l;
	end;
end;
function K.executeStealAsyncSemi(T, l)
	local b = K.Semi.InternalStealCache[T];
	if not b or not b.ready then
		return false;
	end;
	b.ready = false;
	local z = l.name or "Animal";
	K.Semi.StealState.active = true;
	K.Semi.StealState.startTime = tick();
	K.Semi.StealState.phase = "holding";
	K.Semi.StealState.label = z;
	K.isStealing = true;
	K.stealStartTime = tick();
	task.spawn(function()
		for T, l in ipairs(b.holdCallbacks) do
			task.spawn(l);
		end;
		task.wait(K.Semi.HoldMin);
		K.Semi.StealState.phase = "waitingRange";
		local q = K.distToAnimalSemi(l) <= K.Semi.StealRange;
		local P = false;
		while true do
			local z = tick() - K.Semi.StealState.startTime;
			if z > K.Semi.HoldMax then
				break;
			end;
			if not T.Parent then
				break;
			end;
			if K.distToAnimalSemi(l) <= K.Semi.StealRange then
				if not q then
					task.wait(K.Semi.EntryDelay);
				end;
				for T, l in ipairs(b.triggerCallbacks) do
					task.spawn(l);
				end;
				P = true;
				break;
			end;
			task.wait();
		end;
		if P then
			K.Semi.StealState.totalSteals = K.Semi.StealState.totalSteals + 1;
			K.Semi.StealState.lastResult = "Stole " .. z;
		else
			K.Semi.StealState.failedSteals = K.Semi.StealState.failedSteals + 1;
			K.Semi.StealState.lastResult = "Missed window: " .. z;
		end;
		K.Semi.StealState.active = false;
		K.Semi.StealState.phase = "idle";
		K.Semi.StealState.lastResultTime = tick();
		task.wait(.05);
		K.isStealing = false;
		b.ready = true;
	end);
	return true;
end;
function K.attemptStealSemi(T, l)
	if not T or not T.Parent then
		return false;
	end;
	K.buildStealCallbacksSemi(T);
	if not K.Semi.InternalStealCache[T] then
		return false;
	end;
	return K.executeStealAsyncSemi(T, l);
end;
function K.scanAllPlotsSemi()
	if not K.Semi.plots then
		return 0;
	end;
	local T = {};
	for l, b in ipairs(K.Semi.plots:GetChildren()) do
		local z = K.getPlotChannelData(b.Name);
		if not z then
			continue;
		end;
		local q = z.AnimalList;
		if typeof(q) ~= "table" then
			continue;
		end;
		for l, z in pairs(q) do
			if type(z) == "table" then
				local q = z.Index;
				local P = K.Semi.AnimalsData and K.Semi.AnimalsData[q];
				if not P then
					continue;
				end;
				table.insert(T, {
					name = P.DisplayName or q,
					plot = b.Name,
					slot = tostring(l),
					uid = b.Name .. ("_" .. tostring(l)),
				});
			end;
		end;
	end;
	K.Semi.allAnimalsCache = T;
	return #T;
end;
function K.startSemiSteal()
	if K.Semi.stealConnection then
		return;
	end;
	K.initSemiSync();
	K.scanAllPlotsSemi();
	K.Semi.stealConnection = z.Heartbeat:Connect(function()
			if not K.Steal.AutoStealEnabled or K.stealMode ~= "Semi" or K.isStealing then
				return;
			end;
			if K.Semi.StealState.active then
				return;
			end;
			local T = K.pickClosestSemi();
			if not T then
				return;
			end;
			local l = K.Semi.PromptMemoryCache[T.uid];
			if not l or not l.Parent then
				l = K.findProximityPromptForAnimalSemi(T);
			end;
			if l then
				K.attemptStealSemi(l, T);
			end;
		end);
end;
function K.stopSemiSteal()
	if K.Semi.stealConnection then
		K.Semi.stealConnection:Disconnect();
		K.Semi.stealConnection = nil;
	end;
	K.isStealing = false;
	K.updateStealProgress(0);
end;
function K.startAutoSteal()
	if K.statusGui then
		K.statusGui.Enabled = true;
	end;
	if K.stealMode == "Normal" then
		K.startNormalSteal();
	else
		K.startSemiSteal();
	end;
end;
function K.stopAutoSteal()
	if K.statusGui then
		K.statusGui.Enabled = true;
	end;
	if K.stealMode == "Normal" then
		K.stopNormalSteal();
	else
		K.stopSemiSteal();
	end;
	K.isStealing = false;
	K.updateStealProgress(0);
end;
function K.setStealRadius(T)
	K.Steal.StealRadius = T;
	K.updateStatusRadius();
end;
function K.findBat()
	local T = F.Character;
	if not T then
		return nil;
	end;
	for T, l in ipairs(T:GetChildren()) do
		if l:IsA("Tool") and (((l.Name:lower()):find("bat") or (l.Name:lower()):find("slap"))) then
			return l;
		end;
	end;
	local l = F:FindFirstChild("Backpack");
	if l then
		for T, l in ipairs(l:GetChildren()) do
			if l:IsA("Tool") and (((l.Name:lower()):find("bat") or (l.Name:lower()):find("slap"))) then
				return l;
			end;
		end;
	end;
	return nil;
end;
function K.findMedusa()
	local T = F.Character;
	if not T then
		return nil;
	end;
	for T, l in ipairs(T:GetChildren()) do
		if l:IsA("Tool") then
			local T = l.Name:lower();
			if T:find("medusa") or T:find("head") or T:find("stone") then
				return l;
			end;
		end;
	end;
	local l = F:FindFirstChild("Backpack");
	if l then
		for T, l in ipairs(l:GetChildren()) do
			if l:IsA("Tool") then
				local T = l.Name:lower();
				if T:find("medusa") or T:find("head") or T:find("stone") then
					return l;
				end;
			end;
		end;
	end;
	return nil;
end;
function K.useMedusaCounter()
	if K.medusaDebounce then
		return;
	end;
	if K.MEDUSA_COOLDOWN > (tick() - K.medusaLastUsed) then
		return;
	end;
	local T = F.Character;
	if not T then
		return;
	end;
	K.medusaDebounce = true;
	local l = K.findMedusa();
	if not l then
		K.medusaDebounce = false;
		return;
	end;
	if l.Parent ~= T then
		local b = T:FindFirstChildOfClass("Humanoid");
		if b then
			b:EquipTool(l);
		end;
	end;
	pcall(function()
		l:Activate();
	end);
	K.medusaLastUsed = tick();
	K.medusaDebounce = false;
end;
function K.onAnchorChanged(T)
	return (T:GetPropertyChangedSignal("Anchored")):Connect(function()
		if T.Anchored and T.Transparency == 1 then
			if K.medusaCounterEnabled then
				K.useMedusaCounter();
			end;
		end;
	end);
end;
function K.setupMedusa(T)
	for T, l in pairs(K.Conns.anchor) do
		pcall(function()
			l:Disconnect();
		end);
	end;
	K.Conns.anchor = {};
	if not T then
		return;
	end;
	for T, l in ipairs(T:GetDescendants()) do
		if l:IsA("BasePart") then
			table.insert(K.Conns.anchor, K.onAnchorChanged(l));
		end;
	end;
	table.insert(K.Conns.anchor, T.DescendantAdded:Connect(function(T)
		if T:IsA("BasePart") then
			table.insert(K.Conns.anchor, K.onAnchorChanged(T));
		end;
	end));
end;
function K.stopMedusaCounter()
	for T, l in pairs(K.Conns.anchor) do
		pcall(function()
			l:Disconnect();
		end);
	end;
	K.Conns.anchor = {};
end;
function K.findBatForCounter()
	local T = F.Character;
	if not T then
		return nil;
	end;
	local l = F:FindFirstChildOfClass("Backpack");
	for b, z in ipairs(K.BAT_COUNTER_SLAP_LIST) do
		local q = T:FindFirstChild(z) or (l and l:FindFirstChild(z));
		if q then
			return q;
		end;
	end;
	for T, l in ipairs(T:GetChildren()) do
		if l:IsA("Tool") and (l.Name:lower()):find("bat") then
			return l;
		end;
	end;
	if l then
		for T, l in ipairs(l:GetChildren()) do
			if l:IsA("Tool") and (l.Name:lower()):find("bat") then
				return l;
			end;
		end;
	end;
	return nil;
end;
function K.swingBatForCounter(T, l)
	local b = l:FindFirstChildOfClass("Humanoid");
	if T.Parent ~= l then
		if b then
			pcall(function()
				b:EquipTool(T);
			end);
		end;
		task.wait(.05);
	end;
	local z = T:FindFirstChildOfClass("RemoteEvent") or T:FindFirstChildOfClass("RemoteFunction");
	if z and z:IsA("RemoteEvent") then
		pcall(function()
			z:FireServer();
		end);
		task.wait(.15);
		pcall(function()
			z:FireServer();
		end);
	else
		pcall(function()
			T:Activate();
		end);
		task.wait(.15);
		pcall(function()
			T:Activate();
		end);
	end;
end;
function K.startBatCounter()
	if K.Conns.batCounter then
		return;
	end;
	K.Conns.batCounter = z.Heartbeat:Connect(function()
			if not K.batCounterEnabled or K.batCounterDebounce then
				return;
			end;
			local T = F.Character;
			if not T then
				return;
			end;
			local l = T:FindFirstChildOfClass("Humanoid");
			if not l then
				return;
			end;
			local b = l:GetState();
			if b == Enum.HumanoidStateType.Physics or b == Enum.HumanoidStateType.Ragdoll or b == Enum.HumanoidStateType.FallingDown then
				K.batCounterDebounce = true;
				task.spawn(function()
					local l = K.findBatForCounter();
					if l then
						K.swingBatForCounter(l, T);
					end;
					task.wait(.5);
					K.batCounterDebounce = false;
				end);
			end;
		end);
end;
function K.stopBatCounter()
	if K.Conns.batCounter then
		K.Conns.batCounter:Disconnect();
		K.Conns.batCounter = nil;
	end;
	K.batCounterDebounce = false;
end;
function K.findBatForAimbot()
	local T = F.Character;
	if not T then
		return nil;
	end;
	for T, l in ipairs(T:GetChildren()) do
		if l:IsA("Tool") and (((l.Name:lower()):find("bat") or (l.Name:lower()):find("slap"))) then
			return l;
		end;
	end;
	local l = F:FindFirstChild("Backpack");
	if l then
		for T, l in ipairs(l:GetChildren()) do
			if l:IsA("Tool") and (((l.Name:lower()):find("bat") or (l.Name:lower()):find("slap"))) then
				return l;
			end;
		end;
	end;
	return nil;
end;
function K.getClosestTargetAimbot()
	local l = F.Character and F.Character:FindFirstChild("HumanoidRootPart");
	if not l then
		return nil;
	end;
	local b, z = nil, math.huge;
	for T, q in ipairs(T:GetPlayers()) do
		if q ~= F and q.Character then
			local T = q.Character:FindFirstChild("HumanoidRootPart");
			local P = q.Character:FindFirstChildOfClass("Humanoid");
			if T and (P and P.Health > 0) then
				local q = ((T.Position - l.Position)).Magnitude;
				if q < z then
					z = q;
					b = T;
				end;
			end;
		end;
	end;
	return b;
end;
function K.startBatAimbot()
	if K.aimbotConn then
		K.aimbotConn:Disconnect();
	end;
	if K.autoLeftEnabled then
		K.autoLeftEnabled = false;
		if K.autoLeftSetVisual then
			K.autoLeftSetVisual(false);
		end;
		K.stopAutoLeft();
	end;
	if K.autoRightEnabled then
		K.autoRightEnabled = false;
		if K.autoRightSetVisual then
			K.autoRightSetVisual(false);
		end;
		K.stopAutoRight();
	end;
	K.autoBatEnabled = true;
	if K.autoTPEnabled then
		if K.autoTPConn then
			task.cancel(K.autoTPConn);
			K.autoTPConn = nil;
		end;
		if K.setAutoTPVisual then
			K.setAutoTPVisual(true);
		end;
	end;
	local T = F.Character and F.Character:FindFirstChildOfClass("Humanoid");
	if T then
		T.AutoRotate = false;
	end;
	K.aimbotConn = z.RenderStepped:Connect(function()
			if not K.autoBatEnabled then
				return;
			end;
			local T = F.Character;
			if not T then
				return;
			end;
			local l = T:FindFirstChild("HumanoidRootPart");
			local b = T:FindFirstChildOfClass("Humanoid");
			if not l or not b then
				return;
			end;
			if not T:FindFirstChildOfClass("Tool") then
				local T = K.findBatForAimbot();
				if T then
					pcall(function()
						b:EquipTool(T);
					end);
				end;
			end;
			local z = K.getClosestTargetAimbot();
			if not z then
				K._aimbotTarget = nil;
				K.swingCurrentBatAimbot(T);
				return;
			end;
			K._aimbotTarget = z;
			local q = z.AssemblyLinearVelocity;
			local P = l.Position;
			local R = z.Position;
			local W = (R + q * .14) + z.CFrame.LookVector * .3;
			local i = W - P;
			local O = (Vector3.new(i.X, 0, i.Z)).Unit;
			local p = K.aimbotSpeed or 58;
			local Z = R.Y + 3.7;
			local f = ((Z - P.Y)) * 19.5 + q.Y * .8;
			if b.FloorMaterial ~= Enum.Material.Air then
				f = math.max(f, 13);
			end;
			f = math.clamp(f, -70, 110);
			local Y = Vector3.new(O.X * p, f, O.Z * p);
			l.AssemblyLinearVelocity = l.AssemblyLinearVelocity:Lerp(Y, .8);
			local E = q.Magnitude;
			local y = math.clamp(E / 150, .05, .2);
			local e = R + q * y;
			local s = e - P;
			if s.Magnitude > .1 then
				local T = CFrame.lookAt(P, e);
				local b = l.CFrame:Inverse() * T;
				local z, q, F = b:ToEulerAnglesXYZ();
				z = math.clamp(z, -2.5, 2.5);
				q = math.clamp(q, -2.5, 2.5);
				F = math.clamp(F, -2.5, 2.5);
				l.AssemblyAngularVelocity = l.CFrame:VectorToWorldSpace(Vector3.new(z * 42, q * 42, F * 42));
			end;
			K.swingCurrentBatAimbot(T);
		end);
	if K.autoBatSetVisual then
		K.autoBatSetVisual(true);
	end;
	if K.mobBtnRefs.autoBat then
		K.mobBtnRefs.autoBat(true);
	end;
end;
function K.stopBatAimbot()
	if K.aimbotConn then
		K.aimbotConn:Disconnect();
		K.aimbotConn = nil;
	end;
	K._aimbotTarget = nil;
	K.autoBatEnabled = false;
	local T = F.Character;
	local l = T and T:FindFirstChild("HumanoidRootPart");
	if l then
		l.AssemblyLinearVelocity = Vector3.zero;
		l.AssemblyAngularVelocity = Vector3.zero;
	end;
	local b = T and T:FindFirstChildOfClass("Humanoid");
	if b then
		b.AutoRotate = true;
	end;
	if K.autoTPEnabled then
		K.startAutoTP();
	end;
	if K.autoBatSetVisual then
		K.autoBatSetVisual(false);
	end;
	if K.mobBtnRefs.autoBat then
		K.mobBtnRefs.autoBat(false);
	end;
end;
function K.queueAutoBatStart()
	if K.antiKickEnabled and K.brainrotDetected then
		return;
	end;
	if K.autoLeftEnabled then
		K.autoLeftEnabled = false;
		if K.autoLeftSetVisual then
			K.autoLeftSetVisual(false);
		end;
		K.stopAutoLeft();
	end;
	if K.autoRightEnabled then
		K.autoRightEnabled = false;
		if K.autoRightSetVisual then
			K.autoRightSetVisual(false);
		end;
		K.stopAutoRight();
	end;
	K.startBatAimbot();
end;
function K.swingCurrentBatAimbot(T)
	if not K.autoSwingEnabled then
		return;
	end;
	local l = K.findBatForAimbot();
	if l and l.Parent == T then
		pcall(function()
			l:Activate();
		end);
	end;
end;
local function I()
	local T = F.Character;
	if not T then
		return nil;
	end;
	local l = {
			"Bat",
			"Slap",
			"Iron Slap",
			"Gold Slap",
			"Diamond Slap",
			"Emerald Slap",
			"Ruby Slap",
			"Dark Matter Slap",
			"Flame Slap",
			"Nuclear Slap",
			"Galaxy Slap",
			"Glitched Slap",
		};
	for l, b in ipairs(l) do
		local z = T:FindFirstChild(b);
		if z and z:IsA("Tool") then
			return z;
		end;
	end;
	local b = F:FindFirstChildOfClass("Backpack");
	if b then
		for l, z in ipairs(l) do
			local q = b:FindFirstChild(z);
			if q and q:IsA("Tool") then
				local l = T:FindFirstChildOfClass("Humanoid");
				if l then
					pcall(function()
						l:EquipTool(q);
					end);
				end;
				return q;
			end;
		end;
	end;
	return nil;
end;
local function x()
	if K.bypassHitCD then
		return;
	end;
	K.bypassHitCD = true;
	pcall(function()
		local T = I();
		if T then
			local l = F.Character;
			local b = l and l:FindFirstChildOfClass("Humanoid");
			if b and T.Parent ~= l then
				pcall(function()
					b:EquipTool(T);
				end);
			end;
			pcall(function()
				T:Activate();
			end);
		end;
	end);
	task.delay(K.bypassSwingCD, function()
		K.bypassHitCD = false;
	end);
end;
local function n()
	local l = F.Character and F.Character:FindFirstChild("HumanoidRootPart");
	if not l then
		return nil, math.huge;
	end;
	local b, z = nil, math.huge;
	for T, q in ipairs(T:GetPlayers()) do
		if q ~= F and q.Character then
			local T = q.Character:FindFirstChild("HumanoidRootPart");
			local P = q.Character:FindFirstChildOfClass("Humanoid");
			if T and (P and P.Health > 0) then
				local q = ((T.Position - l.Position)).Magnitude;
				if q < z then
					z = q;
					b = T;
				end;
			end;
		end;
	end;
	return b, z;
end;
function K.startNormalBypassAimbot()
	K.bypassAimbotMode = "TPBat";
	K.startTPBatBypassAimbot();
end;
function K.startTPBatBypassAimbot()
	if K.bypassAimbotConn then
		K.bypassAimbotConn:Disconnect();
	end;
	local T = F.Character and F.Character:FindFirstChildOfClass("Humanoid");
	if T and K.bypassPrevAutoRotate == nil then
		K.bypassPrevAutoRotate = T.AutoRotate;
	end;
	if T then
		T.AutoRotate = false;
	end;
	local l = F.Character;
	K._bypassHRP = l and l:FindFirstChild("HumanoidRootPart");
	K._bypassHum = T;
	K.bypassAimbotConn = z.RenderStepped:Connect(function()
			if not K.bypassAimbotEnabled or K.bypassAimbotMode ~= "TPBat" then
				return;
			end;
			local T = F.Character;
			if not T then
				return;
			end;
			local l = T:FindFirstChild("HumanoidRootPart");
			local b = T:FindFirstChildOfClass("Humanoid");
			if not l or not b then
				return;
			end;
			if not T:FindFirstChildOfClass("Tool") then
				local T = I();
				if T then
					pcall(function()
						b:EquipTool(T);
					end);
				end;
			end;
			local z, q = n();
			if not z then
				return;
			end;
			local P = l.Position;
			local R = z.Position;
			local W = R - P;
			local i = Vector3.new(W.X, 0, W.Z);
			if i.Magnitude > 0 then
				i = i.Unit;
			else
				i = Vector3.zero;
			end;
			local O = 58;
			local p = R.Y + 3.7;
			local Z = ((p - P.Y)) * 19.5;
			if b.FloorMaterial ~= Enum.Material.Air then
				Z = math.max(Z, 13);
			end;
			Z = math.clamp(Z, -70, 110);
			local f = Vector3.new(i.X * O, Z, i.Z * O);
			l.AssemblyLinearVelocity = l.AssemblyLinearVelocity:Lerp(f, .8);
			local Y = R - P;
			if Y.Magnitude > .1 then
				local T = CFrame.lookAt(P, R);
				local b = l.CFrame:Inverse() * T;
				local z, q, F = b:ToEulerAnglesXYZ();
				z = math.clamp(z, -2.5, 2.5);
				q = math.clamp(q, -2.5, 2.5);
				F = math.clamp(F, -2.5, 2.5);
				l.AssemblyAngularVelocity = l.CFrame:VectorToWorldSpace(Vector3.new(z * 42, q * 42, F * 42));
			end;
			if q <= K.bypassHitDist then
				x();
			end;
		end);
	task.spawn(function()
		while K.bypassAimbotEnabled and K.bypassAimbotMode == "TPBat" do
			task.wait(.05);
			if not K.bypassAimbotEnabled or K.bypassAimbotMode ~= "TPBat" then
				break;
			end;
			local T = n();
			if not T then
				continue;
			end;
			local l = K._bypassHRP;
			if not l then
				local T = F.Character;
				l = T and T:FindFirstChild("HumanoidRootPart");
				K._bypassHRP = l;
			end;
			if not l then
				continue;
			end;
			local b = T.Position + Vector3.new(0, .9, 0);
			if ((l.Position - b)).Magnitude > 8 then
				l.CFrame = CFrame.new(b);
			end;
			local z = workspace.CurrentCamera;
			if z then
				z.CFrame = CFrame.new(z.CFrame.Position, T.Position);
			end;
			if sethiddenproperty then
				pcall(function()
					sethiddenproperty(l, "PhysicsRepRootPart", T);
				end);
			end;
		end;
	end);
end;
function K.startBypassAimbot()
	K.bypassAimbotMode = "TPBat";
	K.startTPBatBypassAimbot();
end;
function K.stopBypassAimbot()
	if K.bypassAimbotConn then
		K.bypassAimbotConn:Disconnect();
		K.bypassAimbotConn = nil;
	end;
	local T = F.Character;
	local l = T and T:FindFirstChild("HumanoidRootPart");
	if l then
		l.AssemblyLinearVelocity = Vector3.zero;
		l.AssemblyAngularVelocity = Vector3.zero;
	end;
	local b = T and T:FindFirstChildOfClass("Humanoid");
	if b then
		b.AutoRotate = (K.bypassPrevAutoRotate == nil) and true or K.bypassPrevAutoRotate;
		pcall(function()
			b:ChangeState(Enum.HumanoidStateType.GettingUp);
		end);
	end;
	K.bypassHitCD = false;
end;
function K.toggleBypassAimbot()
	K.bypassAimbotEnabled = not K.bypassAimbotEnabled;
	if K.bypassAimbotEnabled then
		K.startBypassAimbot();
	else
		K.stopBypassAimbot();
	end;
	if K.setBypassVisual then
		K.setBypassVisual(K.bypassAimbotEnabled);
	end;
	if K.mobBtnRefs.bypass then
		K.mobBtnRefs.bypass(K.bypassAimbotEnabled);
	end;
	saveLuaStudioConfig();
	return K.bypassAimbotEnabled;
end;
local t, m, L, D, g, a, U = false, nil, nil, false, false, false, nil;
local J = nil;
local h = false;
local c = false;
local S = {};
local function V()
	if t then
		return;
	end;
	t = true;
	D = false;
	g = false;
	a = false;
	local T = F.Character;
	if not T then
		t = false;
		return;
	end;
	local l = T:FindFirstChildOfClass("Humanoid");
	if not l then
		t = false;
		return;
	end;
	local b = workspace.CurrentCamera;
	if b then
		U = b.CFrame;
		a = true;
		b.CFrame = U;
	end;
	L = T;
	local z = false;
	m = task.spawn(function()
			local b, q, P = 0, 40, l.HipHeight;
			while T and (T.Parent and (l and (l.Health > 0 and (not z and not g)))) do
				if F.Character ~= T then
					z = true;
					break;
				end;
				pcall(function()
					l.HipHeight = 1e+30;
					l.AutoRotate = true;
					local b = T:FindFirstChild("HumanoidRootPart");
					if b then
						b.CanCollide = false;
					end;
					for T, l in ipairs(T:GetChildren()) do
						if l:IsA("BasePart") and l.Name ~= "HumanoidRootPart" then
							l.CanCollide = false;
						end;
					end;
				end);
				if not T or not T.Parent or not l or l.Health <= 0 or F.Character ~= T then
					D = true;
					break;
				end;
				b = b + (1);
				if b >= q then
					break;
				end;
				task.wait(.05);
			end;
			if not D then
				if T and (T.Parent and (l and (l.Health > 0 and not z))) then
					pcall(function()
						l.Health = 0;
					end);
					task.wait(.1);
					if not T.Parent or l.Health <= 0 then
						D = true;
					end;
				end;
			end;
			if not D and (T and (T.Parent and l)) then
				pcall(function()
					l.HipHeight = P;
					local b = T:FindFirstChild("HumanoidRootPart");
					if b then
						b.CanCollide = true;
					end;
					for T, l in ipairs(T:GetChildren()) do
						if l:IsA("BasePart") and l.Name ~= "HumanoidRootPart" then
							l.CanCollide = true;
						end;
					end;
				end);
			end;
			a = false;
			t = false;
			m = nil;
			L = nil;
			g = false;
			h = false;
		end);
end;
local function G()
	g = true;
	if m then
		task.cancel(m);
		m = nil;
	end;
	t = false;
	h = false;
	L = nil;
	a = false;
	local T = F.Character;
	if T then
		local l = T:FindFirstChildOfClass("Humanoid");
		if l then
			pcall(function()
				l.HipHeight = 2;
				local b = T:FindFirstChild("HumanoidRootPart");
				if b then
					b.CanCollide = true;
				end;
				for T, l in ipairs(T:GetChildren()) do
					if l:IsA("BasePart") and l.Name ~= "HumanoidRootPart" then
						l.CanCollide = true;
					end;
				end;
			end);
		end;
	end;
end;
task.spawn(function()
	local T = workspace.CurrentCamera;
	while true do
		task.wait(.016);
		if a and (U and T) then
			T.CFrame = U;
		end;
	end;
end);
F.CharacterAdded:Connect(function()
	G();
	t = false;
	h = false;
	L = nil;
	D = false;
	g = false;
	a = false;
end);
local function X(T)
	return (T:GetPropertyChangedSignal("Anchored")):Connect(function()
		if T.Anchored and (T.Transparency == 1 and T.Name ~= "HumanoidRootPart") then
			if c or not K.medusaResetEnabled then
				return;
			end;
			c = true;
			task.spawn(function()
				V();
				task.wait(1.5);
				c = false;
			end);
		end;
	end);
end;
function K.startMedusaReset()
	if K._medusaResetConnections then
		for T, l in pairs(K._medusaResetConnections) do
			pcall(function()
				l:Disconnect();
			end);
		end;
	end;
	K._medusaResetConnections = {};
	local T = F.Character;
	if not T then
		return;
	end;
	for T, l in ipairs(T:GetDescendants()) do
		if l:IsA("BasePart") then
			table.insert(K._medusaResetConnections, X(l));
		end;
	end;
	table.insert(K._medusaResetConnections, T.DescendantAdded:Connect(function(T)
		if T:IsA("BasePart") then
			table.insert(K._medusaResetConnections, X(T));
		end;
	end));
end;
function K.stopMedusaReset()
	if K._medusaResetConnections then
		for T, l in pairs(K._medusaResetConnections) do
			pcall(function()
				l:Disconnect();
			end);
		end;
		K._medusaResetConnections = nil;
	end;
	c = false;
	h = false;
end;
function K.toggleMedusaReset()
	K.medusaResetEnabled = not K.medusaResetEnabled;
	if K.medusaResetEnabled then
		K.startMedusaReset();
	else
		K.stopMedusaReset();
	end;
	if K.setMedusaResetVisual then
		K.setMedusaResetVisual(K.medusaResetEnabled);
	end;
	saveLuaStudioConfig();
	return K.medusaResetEnabled;
end;
local j = 0;
function K.startAntiRagdoll()
	if K.Conns.antiRag then
		return;
	end;
	K.Conns.antiRag = z.Heartbeat:Connect(function()
			if not K.antiRagdollEnabled then
				return;
			end;
			local T = F.Character;
			if not T then
				return;
			end;
			local l = T:FindFirstChildOfClass("Humanoid");
			local b = T:FindFirstChild("HumanoidRootPart");
			if not l or not b or l.Health <= 0 then
				return;
			end;
			local z = l:GetState();
			local q = tick();
			if z == Enum.HumanoidStateType.Physics or z == Enum.HumanoidStateType.Ragdoll or z == Enum.HumanoidStateType.FallingDown then
				if q - j > .15 then
					j = q;
					pcall(function()
						l:ChangeState(Enum.HumanoidStateType.GettingUp);
						b.Velocity = Vector3.zero;
						b.RotVelocity = Vector3.zero;
						b.AssemblyLinearVelocity = Vector3.zero;
						b.AssemblyAngularVelocity = Vector3.zero;
						for T, l in ipairs(T:GetDescendants()) do
							if l:IsA("Motor6D") then
								l.Enabled = true;
							end;
						end;
						for T, l in ipairs(T:GetDescendants()) do
							if l:IsA("Constraint") then
								l.Enabled = true;
							end;
						end;
						workspace.CurrentCamera.CameraSubject = l;
						local z = F.PlayerScripts:FindFirstChild("PlayerModule");
						if z then
							local T = require(z:FindFirstChild("ControlModule"));
							if T then
								T:Enable();
							end;
						end;
						l.AutoRotate = true;
						l.PlatformStand = false;
						l.Sit = false;
					end);
				end;
			end;
		end);
end;
function K.stopAntiRagdoll()
	if K.Conns.antiRag then
		K.Conns.antiRag:Disconnect();
		K.Conns.antiRag = nil;
	end;
	j = 0;
end;
local TZ = nil;
local lZ = nil;
function K.cursedInstaReset()
	V();
end;
function K.setupDeathReset()
	if TZ then
		TZ:Disconnect();
		TZ = nil;
	end;
	if not K.autoResetOnDeath then
		return;
	end;
	local T = F.Character;
	if T then
		local l = T:FindFirstChildOfClass("Humanoid");
		if l then
			TZ = l.Died:Connect(function()
					if K.autoResetOnDeath then
						K.cursedInstaReset();
					end;
				end);
		end;
	end;
end;
if lZ then
	lZ:Disconnect();
end;
lZ = F.CharacterAdded:Connect(function(T)
		task.wait(.5);
		K.setupDeathReset();
	end);
function K.doAutoTPDown(T)
	local l = F.Character;
	if not l then
		return;
	end;
	local b = l:FindFirstChild("HumanoidRootPart");
	if not b then
		return;
	end;
	local z = l:FindFirstChildOfClass("Humanoid");
	if not z then
		return;
	end;
	if not T then
		if z.FloorMaterial ~= Enum.Material.Air then
			return;
		end;
		if not ((b.Position.Y >= K.autoTPHeight)) then
			return;
		end;
	end;
	b.CFrame = CFrame.new(b.Position.X, -7, b.Position.Z) * CFrame.Angles(0, select(2, b.CFrame:ToEulerAnglesYXZ()), 0);
	b.AssemblyLinearVelocity = Vector3.zero;
	k();
end;
function K.startAutoTP()
	if K.autoTPConn then
		task.cancel(K.autoTPConn);
		K.autoTPConn = nil;
	end;
	K.autoTPConn = task.spawn(function()
			while K.autoTPEnabled do
				task.wait(.1);
				pcall(function()
					K.doAutoTPDown(false);
				end);
			end;
		end);
end;
function K.stopAutoTP()
	K.autoTPEnabled = false;
	if K.autoTPConn then
		task.cancel(K.autoTPConn);
		K.autoTPConn = nil;
	end;
end;
function K.runTPFloor()
	pcall(function()
		K.doAutoTPDown(true);
	end);
end;
function K.enableStretchRez()
	K.stretchRezEnabled = true;
	if K.stretchRezConn then
		K.stretchRezConn:Disconnect();
	end;
	pcall(function()
		z:UnbindFromRenderStep("Movee_Stretch");
	end);
	pcall(function()
		z:BindToRenderStep("Movee_Stretch", Enum.RenderPriority.Last.Value - 1, function()
			local T = workspace.CurrentCamera;
			if T then
				T.CFrame = T.CFrame * CFrame.new(0, 0, 0, 1, 0, 0, 0, .8, 0, 0, 0, 1);
			end;
		end);
	end);
end;
function K.disableStretchRez()
	K.stretchRezEnabled = false;
	pcall(function()
		z:UnbindFromRenderStep("Movee_Stretch");
	end);
end;
K._alSeen = K._alSeen or setmetatable({}, { __mode = "k" });
K._alNow = (os and os.clock) or tick or function()
		return os.time();
	end;
local bZ = Enum.Material.Plastic;
function K.applyAntiLagDerender(T)
	if K._alSeen[T] then
		return;
	end;
	K._alSeen[T] = true;
	local l = T.ClassName;
	if l == "Part" or l == "MeshPart" or l == "UnionOperation" or l == "TrussPart" or l == "WedgePart" or l == "CornerWedgePart" then
		if T.Material ~= bZ then
			T.Material = bZ;
		end;
		if T.Reflectance ~= 0 then
			T.Reflectance = 0;
		end;
		if T.CastShadow then
			T.CastShadow = false;
		end;
	elseif l == "ParticleEmitter" or l == "Trail" or l == "Beam" or l == "Fire" or l == "Smoke" or l == "Sparkles" then
		if T.Enabled then
			T.Enabled = false;
		end;
	elseif l == "Decal" or l == "Texture" then
		if T.Transparency ~= 1 then
			T.Transparency = 1;
		end;
	elseif l == "Accessory" or l == "Hat" then
		T:Destroy();
	end;
end;
function K._alSlice(T)
	local l, b = 1, #T;
	local z = .003;
	while l <= b do
		local q = K._alNow();
		while l <= b do
			K.applyAntiLagDerender(T[l]);
			l = l + 1;
			if K._alNow() - q >= z then
				break;
			end;
		end;
		if l <= b then
			task.wait();
		end;
	end;
end;
function K.enableAntiLag()
	K.removeAccessoriesEnabled = true;
	K.antiLagEnabled = true;
	K.defLightBrightness = K.defLightBrightness or q.Brightness;
	K.defLightClock = K.defLightClock or q.ClockTime;
	K.defLightAmbient = K.defLightAmbient or q.OutdoorAmbient;
	q.GlobalShadows = false;
	q.FogEnd = 10000000000;
	q.Brightness = 1;
	q.EnvironmentDiffuseScale = 0;
	q.EnvironmentSpecularScale = 0;
	for T, l in ipairs(q:GetChildren()) do
		pcall(function()
			if l:IsA("PostEffect") then
				l.Enabled = false;
			end;
		end);
	end;
	if K.antiLagDescConn then
		K.antiLagDescConn:Disconnect();
		K.antiLagDescConn = nil;
	end;
	K._alPending = {};
	K._alDraining = false;
	local function T()
		if K._alDraining then
			return;
		end;
		K._alDraining = true;
		task.spawn(function()
			while K.removeAccessoriesEnabled and #K._alPending > 0 do
				local T = K._alPending;
				K._alPending = {};
				K._alSlice(T);
			end;
			K._alDraining = false;
		end);
	end;
	K.antiLagDescConn = workspace.DescendantAdded:Connect(function(l)
			if not K.removeAccessoriesEnabled then
				return;
			end;
			K._alPending[#K._alPending + 1] = l;
			T();
		end);
	task.spawn(function()
		K._alSlice(workspace:GetDescendants());
		if #K._alPending > 0 then
			T();
		end;
	end);
end;
function K.disableAntiLag()
	K.removeAccessoriesEnabled = false;
	K.antiLagEnabled = false;
	if K.antiLagDescConn then
		K.antiLagDescConn:Disconnect();
		K.antiLagDescConn = nil;
	end;
	pcall(function()
		if K.defLightBrightness then
			q.Brightness = K.defLightBrightness;
		end;
		if K.defLightClock then
			q.ClockTime = K.defLightClock;
		end;
		if K.defLightAmbient then
			q.OutdoorAmbient = K.defLightAmbient;
		end;
		q.ExposureCompensation = 0;
	end);
end;
K.jumpHeld = false;
K.lastJumpBoostTime = 0;
K.JUMP_BOOST_INTERVAL = .05;
K.infJumpThread = nil;
task.spawn(function()
	local T = F:WaitForChild("PlayerGui", 10);
	if T then
		local function l(T)
			if T:IsA("GuiButton") and (T.Name == "JumpButton" and not T:GetAttribute("InfJumpHooked")) then
				T:SetAttribute("InfJumpHooked", true);
				T.MouseButton1Down:Connect(function()
					if K.infJumpEnabled and K.infJumpMode == "manual" then
						K.jumpHeld = true;
					end;
				end);
				T.MouseButton1Up:Connect(function()
					K.jumpHeld = false;
				end);
				T.MouseLeave:Connect(function()
					K.jumpHeld = false;
				end);
			end;
		end;
		for T, b in ipairs(T:GetDescendants()) do
			l(b);
		end;
		T.DescendantAdded:Connect(l);
	end;
end);
b.JumpRequest:Connect(function()
	if K.infJumpEnabled and K.infJumpMode == "manual" then
		K.jumpHeld = true;
		task.wait(.05);
		K.jumpHeld = false;
	end;
end);
b.InputBegan:Connect(function(T, l)
	if l then
		return;
	end;
	if K.infJumpEnabled and (K.infJumpMode == "manual" and (T.UserInputType == Enum.UserInputType.Keyboard and T.KeyCode == Enum.KeyCode.Space)) then
		K.jumpHeld = true;
	end;
end);
b.InputEnded:Connect(function(T)
	if T.UserInputType == Enum.UserInputType.Keyboard and T.KeyCode == Enum.KeyCode.Space then
		K.jumpHeld = false;
	end;
end);
function K.startManualInfJumpLoop()
	if K.infJumpThread then
		K.infJumpThread:Disconnect();
	end;
	K.infJumpThread = z.Stepped:Connect(function()
			if not K.infJumpEnabled or K.infJumpMode ~= "manual" then
				return;
			end;
			if not K.jumpHeld then
				return;
			end;
			local T = tick();
			if T - K.lastJumpBoostTime < K.JUMP_BOOST_INTERVAL then
				return;
			end;
			K.lastJumpBoostTime = T;
			local l = F.Character;
			if not l then
				return;
			end;
			local b = l:FindFirstChildOfClass("Humanoid");
			local z = l:FindFirstChild("HumanoidRootPart");
			if not b or not z or b.Health <= 0 then
				return;
			end;
			local q = z.AssemblyLinearVelocity;
			if q.Y < 55 then
				z.AssemblyLinearVelocity = Vector3.new(q.X, 65, q.Z);
			end;
		end);
end;
function K.stopManualInfJumpLoop()
	if K.infJumpThread then
		K.infJumpThread:Disconnect();
		K.infJumpThread = nil;
	end;
	K.jumpHeld = false;
	K.lastJumpBoostTime = 0;
end;
function K.startHoldInfJump()
	if K.holdInfJumpConn then
		K.holdInfJumpConn:Disconnect();
	end;
	K.holdInfJumpConn = z.Heartbeat:Connect(function()
			if not K.infJumpEnabled or K.infJumpMode ~= "hold" then
				return;
			end;
			local T = F.Character;
			if not T then
				return;
			end;
			local l = T:FindFirstChild("HumanoidRootPart");
			local z = T:FindFirstChildOfClass("Humanoid");
			if not l or not z then
				return;
			end;
			local q = b:IsKeyDown(Enum.KeyCode.Space) or (z.Jump == true);
			if q and l.Velocity.Y < 35 then
				l.Velocity = Vector3.new(l.Velocity.X, 55, l.Velocity.Z);
			end;
			if l.Velocity.Y < -120 then
				l.Velocity = Vector3.new(l.Velocity.X, -120, l.Velocity.Z);
			end;
		end);
end;
function K.stopHoldInfJump()
	if K.holdInfJumpConn then
		K.holdInfJumpConn:Disconnect();
		K.holdInfJumpConn = nil;
	end;
end;
function K.startUnwalk()
	local T = F.Character;
	if not T then
		return;
	end;
	local l = T:FindFirstChildOfClass("Humanoid");
	if l then
		for T, l in ipairs(l:GetPlayingAnimationTracks()) do
			l:Stop();
		end;
	end;
	local b = T:FindFirstChild("Animate");
	if b then
		K.unwalkSavedAnimate = b:Clone();
		b:Destroy();
	end;
end;
function K.stopUnwalk()
	local T = F.Character;
	if T and K.unwalkSavedAnimate then
		(K.unwalkSavedAnimate:Clone()).Parent = T;
		K.unwalkSavedAnimate = nil;
	end;
end;
function K.toggleCarryMode()
	K.carrySpeedActive = not K.carrySpeedActive;
	K.refreshSpeedModeLabel();
	if K.mobBtnRefs.carrySpeed then
		K.mobBtnRefs.carrySpeed(K.carrySpeedActive);
	end;
	if K.mobBtnRefs.lagger then
		K.mobBtnRefs.lagger(K.laggerModeEnabled);
	end;
	if K.carryModeBtn then
		K.carryModeBtn.Text = K.carrySpeedActive and "Carry On" or "Carry Off";
	end;
	saveLuaStudioConfig();
end;
function K.toggleLaggerMode()
	K.laggerModeEnabled = not K.laggerModeEnabled;
	K.refreshSpeedModeLabel();
	if K.mobBtnRefs.carrySpeed then
		K.mobBtnRefs.carrySpeed(K.carrySpeedActive);
	end;
	if K.mobBtnRefs.lagger then
		K.mobBtnRefs.lagger(K.laggerModeEnabled);
	end;
	if K.laggerModeBtn then
		K.laggerModeBtn.Text = K.laggerModeEnabled and "Lag On" or "Lag Off";
	end;
	saveLuaStudioConfig();
end;
function K.keybindNormalMode()
	if K.laggerModeEnabled then
		K.laggerModeEnabled = false;
	else
		K.carrySpeedActive = not K.carrySpeedActive;
	end;
	K.refreshSpeedModeLabel();
	if K.mobBtnRefs.carrySpeed then
		K.mobBtnRefs.carrySpeed(K.carrySpeedActive);
	end;
	if K.mobBtnRefs.lagger then
		K.mobBtnRefs.lagger(K.laggerModeEnabled);
	end;
	if K.carryModeBtn then
		K.carryModeBtn.Text = K.carrySpeedActive and "Carry On" or "Carry Off";
	end;
	if K.laggerModeBtn then
		K.laggerModeBtn.Text = K.laggerModeEnabled and "Lag On" or "Lag Off";
	end;
	saveLuaStudioConfig();
end;
function K.keybindLaggerMode()
	if not K.laggerModeEnabled then
		K.laggerModeEnabled = true;
	else
		K.carrySpeedActive = not K.carrySpeedActive;
	end;
	K.refreshSpeedModeLabel();
	if K.mobBtnRefs.carrySpeed then
		K.mobBtnRefs.carrySpeed(K.currentSpeedMode() == "carry");
	end;
	if K.mobBtnRefs.lagger then
		K.mobBtnRefs.lagger(K.currentSpeedMode() == "lagger");
	end;
	if K.mobBtnRefs.laggerCarry then
		K.mobBtnRefs.laggerCarry(K.currentSpeedMode() == "laggerCarry");
	end;
	if K.carryModeBtn then
		K.carryModeBtn.Text = K.carrySpeedActive and "Carry On" or "Carry Off";
	end;
	if K.laggerModeBtn then
		K.laggerModeBtn.Text = K.laggerModeEnabled and "Lag On" or "Lag Off";
	end;
	saveLuaStudioConfig();
end;
function K.setSpeedMode(T)
	if T == "carry" then
		K.laggerModeEnabled = false;
		K.carrySpeedActive = true;
	elseif T == "lagger" then
		K.laggerModeEnabled = true;
		K.carrySpeedActive = false;
	elseif T == "laggerCarry" then
		K.laggerModeEnabled = true;
		K.carrySpeedActive = true;
	else
		K.laggerModeEnabled = false;
		K.carrySpeedActive = false;
	end;
	if K.mobBtnRefs.carrySpeed then
		K.mobBtnRefs.carrySpeed(T == "carry");
	end;
	if K.mobBtnRefs.lagger then
		K.mobBtnRefs.lagger(T == "lagger");
	end;
	if K.mobBtnRefs.laggerCarry then
		K.mobBtnRefs.laggerCarry(T == "laggerCarry");
	end;
	if K.refreshSpeedModeLabel then
		K.refreshSpeedModeLabel();
	end;
	if K.carryModeBtn then
		K.carryModeBtn.Text = K.carrySpeedActive and "Carry On" or "Carry Off";
	end;
	if K.laggerModeBtn then
		K.laggerModeBtn.Text = K.laggerModeEnabled and "Lag On" or "Lag Off";
	end;
	saveLuaStudioConfig();
end;
function K.currentSpeedMode()
	if K.laggerModeEnabled and K.carrySpeedActive then
		return "laggerCarry";
	elseif K.laggerModeEnabled then
		return "lagger";
	elseif K.carrySpeedActive then
		return "carry";
	else
		return "normal";
	end;
end;
function K.stopAutoLeft()
	if K.alConn then
		K.alConn:Disconnect();
		K.alConn = nil;
	end;
	K.alPhase = 1;
	local T = F.Character;
	if T then
		local l = T:FindFirstChildOfClass("Humanoid");
		if l then
			l:Move(Vector3.zero, false);
		end;
	end;
	if K.autoLeftSetVisual then
		K.autoLeftSetVisual(false);
	end;
	if K.mobBtnRefs.autoLeft then
		K.mobBtnRefs.autoLeft(false);
	end;
end;
function K.stopAutoRight()
	if K.arConn then
		K.arConn:Disconnect();
		K.arConn = nil;
	end;
	K.arPhase = 1;
	local T = F.Character;
	if T then
		local l = T:FindFirstChildOfClass("Humanoid");
		if l then
			l:Move(Vector3.zero, false);
		end;
	end;
	if K.autoRightSetVisual then
		K.autoRightSetVisual(false);
	end;
	if K.mobBtnRefs.autoRight then
		K.mobBtnRefs.autoRight(false);
	end;
end;
function K.startAutoLeft()
	if K.alConn then
		K.alConn:Disconnect();
	end;
	K.alPhase = 1;
	K.alConn = z.Heartbeat:Connect(function()
			if not K.autoLeftEnabled then
				return;
			end;
			local T = F.Character;
			if not T then
				return;
			end;
			local l = T:FindFirstChild("HumanoidRootPart");
			local b = T:FindFirstChildOfClass("Humanoid");
			if not l or not b then
				return;
			end;
			if K.isRagdollState(b) then
				b:Move(Vector3.zero, false);
				k();
				return;
			end;
			local z = K.getAutoPathSpeed();
			if K.alPhase == 1 then
				local T = Vector3.new(K.AP_L1.X, l.Position.Y, K.AP_L1.Z);
				if ((T - l.Position)).Magnitude < 1 then
					K.alPhase = 2;
					local T = K.AP_L2 - l.Position;
					local q = (Vector3.new(T.X, 0, T.Z)).Unit;
					b:Move(q, false);
					u(q.X * z, q.Z * z);
					return;
				end;
				local q = K.AP_L1 - l.Position;
				local P = (Vector3.new(q.X, 0, q.Z)).Unit;
				b:Move(P, false);
				u(P.X * z, P.Z * z);
			elseif K.alPhase == 2 then
				local T = Vector3.new(K.AP_L2.X, l.Position.Y, K.AP_L2.Z);
				if ((T - l.Position)).Magnitude < 1 then
					b:Move(Vector3.zero, false);
					k();
					K.autoLeftEnabled = false;
					if K.alConn then
						K.alConn:Disconnect();
						K.alConn = nil;
					end;
					K.alPhase = 1;
					if K.autoLeftSetVisual then
						K.autoLeftSetVisual(false);
					end;
					if K.mobBtnRefs.autoLeft then
						K.mobBtnRefs.autoLeft(false);
					end;
					return;
				end;
				local q = K.AP_L2 - l.Position;
				local P = (Vector3.new(q.X, 0, q.Z)).Unit;
				b:Move(P, false);
				u(P.X * z, P.Z * z);
			end;
			if K.autoMoveSwingEnabled and not K._alSwingDebounce then
				K._alSwingDebounce = true;
				local l = K.findBat();
				if l then
					if l.Parent ~= T then
						pcall(function()
							b:EquipTool(l);
						end);
					end;
					pcall(function()
						l:Activate();
					end);
				end;
				task.delay(K.autoMoveSwingInterval, function()
					K._alSwingDebounce = false;
				end);
			end;
		end);
end;
function K.startAutoRight()
	if K.arConn then
		K.arConn:Disconnect();
	end;
	K.arPhase = 1;
	K.arConn = z.Heartbeat:Connect(function()
			if not K.autoRightEnabled then
				return;
			end;
			local T = F.Character;
			if not T then
				return;
			end;
			local l = T:FindFirstChild("HumanoidRootPart");
			local b = T:FindFirstChildOfClass("Humanoid");
			if not l or not b then
				return;
			end;
			if K.isRagdollState(b) then
				b:Move(Vector3.zero, false);
				k();
				return;
			end;
			local z = K.getAutoPathSpeed();
			if K.arPhase == 1 then
				local T = Vector3.new(K.AP_R1.X, l.Position.Y, K.AP_R1.Z);
				if ((T - l.Position)).Magnitude < 1 then
					K.arPhase = 2;
					local T = K.AP_R2 - l.Position;
					local q = (Vector3.new(T.X, 0, T.Z)).Unit;
					b:Move(q, false);
					u(q.X * z, q.Z * z);
					return;
				end;
				local q = K.AP_R1 - l.Position;
				local P = (Vector3.new(q.X, 0, q.Z)).Unit;
				b:Move(P, false);
				u(P.X * z, P.Z * z);
			elseif K.arPhase == 2 then
				local T = Vector3.new(K.AP_R2.X, l.Position.Y, K.AP_R2.Z);
				if ((T - l.Position)).Magnitude < 1 then
					b:Move(Vector3.zero, false);
					k();
					K.autoRightEnabled = false;
					if K.arConn then
						K.arConn:Disconnect();
						K.arConn = nil;
					end;
					K.arPhase = 1;
					if K.autoRightSetVisual then
						K.autoRightSetVisual(false);
					end;
					if K.mobBtnRefs.autoRight then
						K.mobBtnRefs.autoRight(false);
					end;
					return;
				end;
				local q = K.AP_R2 - l.Position;
				local P = (Vector3.new(q.X, 0, q.Z)).Unit;
				b:Move(P, false);
				u(P.X * z, P.Z * z);
			end;
			if K.autoMoveSwingEnabled and not K._arSwingDebounce then
				K._arSwingDebounce = true;
				local l = K.findBat();
				if l then
					if l.Parent ~= T then
						pcall(function()
							b:EquipTool(l);
						end);
					end;
					pcall(function()
						l:Activate();
					end);
				end;
				task.delay(K.autoMoveSwingInterval, function()
					K._arSwingDebounce = false;
				end);
			end;
		end);
end;
function K.enableAntiKick()
	K.antiKickEnabled = true;
	task.spawn(function()
		while K.antiKickEnabled do
			task.wait(.5);
			local T = F.Character;
			if T then
				for T, l in ipairs(T:GetChildren()) do
					if l:IsA("Tool") then
						local T = l.Name:lower();
						if T:find("brainrot") or T:find("skibidi") or T:find("toilet") then
							K.brainrotDetected = true;
							if K.autoBatEnabled then
								K.autoBatEnabled = false;
								if K.autoBatSetVisual then
									K.autoBatSetVisual(false);
								end;
							end;
							if K.autoLeftEnabled then
								K.autoLeftEnabled = false;
								if K.autoLeftSetVisual then
									K.autoLeftSetVisual(false);
								end;
							end;
							if K.autoRightEnabled then
								K.autoRightEnabled = false;
								if K.autoRightSetVisual then
									K.autoRightSetVisual(false);
								end;
							end;
						else
							K.brainrotDetected = false;
						end;
					end;
				end;
			end;
		end;
	end);
end;
function K.disableAntiKick()
	K.antiKickEnabled = false;
	K.brainrotDetected = false;
end;
function K.getActiveMoveSpeed()
	if K.laggerModeEnabled and K.carrySpeedActive then
		return K.LAGGER_CARRY_SPEED;
	elseif K.laggerModeEnabled then
		return K.LAGGER_SPEED;
	elseif K.carrySpeedActive then
		return K.CS;
	else
		return K.NS;
	end;
end;
function K.getAutoPathSpeed()
	return K.NS;
end;
function K.updateAutoSwitchSpeed()
	if not K.autoSwitchSpeedEnabled then
		return;
	end;
	local T = F.Character;
	if not T then
		return;
	end;
	local l = T:FindFirstChildOfClass("Humanoid");
	if not l then
		return;
	end;
	local b = l.WalkSpeed < 25;
	if b == K._autoSwitchWasSteal then
		return;
	end;
	K._autoSwitchWasSteal = b;
	if b then
		K.carrySpeedActive = true;
	else
		K.carrySpeedActive = false;
	end;
	if K.refreshSpeedModeLabel then
		K.refreshSpeedModeLabel();
	end;
	if K.mobBtnRefs.carrySpeed then
		K.mobBtnRefs.carrySpeed(K.carrySpeedActive);
	end;
	if K.carryModeBtn then
		K.carryModeBtn.Text = K.carrySpeedActive and "Carry On" or "Carry Off";
	end;
end;
function K.startAutoCarryOnGrab()
	if K._autoCarryConn then
		K._autoCarryConn:Disconnect();
		K._autoCarryConn = nil;
	end;
	local T = false;
	K._autoCarryConn = z.Heartbeat:Connect(function()
			local l = F.Character;
			if not l then
				return;
			end;
			local b = l:FindFirstChildOfClass("Humanoid");
			if not b then
				return;
			end;
			if K.laggerModeEnabled then
				return;
			end;
			local z = b.WalkSpeed < 25;
			if z and not T then
				T = true;
				K.carrySpeedActive = true;
				if K.refreshSpeedModeLabel then
					K.refreshSpeedModeLabel();
				end;
				if K.mobBtnRefs.carrySpeed then
					K.mobBtnRefs.carrySpeed(true);
				end;
				if K.carryModeBtn then
					K.carryModeBtn.Text = "Carry On";
				end;
			elseif not z and T then
				T = false;
				K.carrySpeedActive = false;
				if K.refreshSpeedModeLabel then
					K.refreshSpeedModeLabel();
				end;
				if K.mobBtnRefs.carrySpeed then
					K.mobBtnRefs.carrySpeed(false);
				end;
				if K.carryModeBtn then
					K.carryModeBtn.Text = "Carry Off";
				end;
			end;
		end);
end;
function K.stopAutoCarryOnGrab()
	if K._autoCarryConn then
		K._autoCarryConn:Disconnect();
		K._autoCarryConn = nil;
	end;
	K.carrySpeedActive = false;
	if K.refreshSpeedModeLabel then
		K.refreshSpeedModeLabel();
	end;
	if K.mobBtnRefs.carrySpeed then
		K.mobBtnRefs.carrySpeed(false);
	end;
	if K.carryModeBtn then
		K.carryModeBtn.Text = "Carry Off";
	end;
end;
function K.startPingAlert()
	if K._pingAlertConn then
		K._pingAlertConn:Disconnect();
		K._pingAlertConn = nil;
	end;
	if K._pingAlertTask then
		task.cancel(K._pingAlertTask);
		K._pingAlertTask = nil;
	end;
	local T = F:FindFirstChild("PlayerGui");
	if not T then
		return;
	end;
	if K.pingPopupGui then
		pcall(function()
			K.pingPopupGui:Destroy();
		end);
	end;
	local b = Instance.new("ScreenGui");
	b.Name = "Lua StudioPingAlert";
	b.ResetOnSpawn = false;
	b.DisplayOrder = 20;
	b.Parent = T;
	K.pingPopupGui = b;
	local z = Instance.new("Frame", b);
	z.Size = UDim2.new(0, 220, 0, 48);
	z.Position = UDim2.new(.5, -110, 0, -60);
	z.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
	z.BackgroundTransparency = 0;
	z.BorderSizePixel = 0;
	z.Visible = true;
	(Instance.new("UICorner", z)).CornerRadius = UDim.new(0, 8);
	local q = Instance.new("UIStroke", z);
	q.Color = Color3.fromRGB(220, 60, 60);
	q.Thickness = 1.5;
	local P = Instance.new("Frame", z);
	P.Size = UDim2.new(0, 4, 1, 0);
	P.BackgroundColor3 = Color3.fromRGB(220, 60, 60);
	P.BorderSizePixel = 0;
	(Instance.new("UICorner", P)).CornerRadius = UDim.new(0, 8);
	local R = Instance.new("TextLabel", z);
	R.Size = UDim2.new(1, -16, 0, 22);
	R.Position = UDim2.new(0, 12, 0, 4);
	R.BackgroundTransparency = 1;
	R.Text = "HIGH PING  \226\128\162  Duel";
	R.TextColor3 = Color3.fromRGB(220, 60, 60);
	R.Font = Enum.Font.GothamBlack;
	R.TextSize = 11;
	R.TextXAlignment = Enum.TextXAlignment.Left;
	local W = Instance.new("TextLabel", z);
	W.Size = UDim2.new(1, -16, 0, 18);
	W.Position = UDim2.new(0, 12, 0, 26);
	W.BackgroundTransparency = 1;
	W.Text = "0 ms";
	W.TextColor3 = Color3.fromRGB(200, 200, 210);
	W.Font = Enum.Font.GothamBold;
	W.TextSize = 10;
	W.TextXAlignment = Enum.TextXAlignment.Left;
	local i = UDim2.new(.5, -110, 0, 12);
	local O = UDim2.new(.5, -110, 0, -60);
	local p = false;
	local Z = nil;
	local function f(T)
		W.Text = T .. " ms";
		if not p then
			p = true;
			(l:Create(z, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = i })):Play();
		end;
		if Z then
			task.cancel(Z);
		end;
		Z = task.delay(5, function()
				p = false;
				(l:Create(z, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = O })):Play();
			end);
	end;
	K._pingAlertTask = task.spawn(function()
			while K.pingAlertEnabled do
				local T = 0;
				pcall(function()
					T = math.floor(F:GetNetworkPing() * 1000 + .5);
				end);
				if T > 120 then
					f(T);
				end;
				task.wait(5);
			end;
		end);
end;
function K.stopPingAlert()
	if K._pingAlertConn then
		K._pingAlertConn:Disconnect();
		K._pingAlertConn = nil;
	end;
	if K._pingAlertTask then
		task.cancel(K._pingAlertTask);
		K._pingAlertTask = nil;
	end;
	if K.pingPopupGui then
		pcall(function()
			K.pingPopupGui:Destroy();
		end);
		K.pingPopupGui = nil;
	end;
	K.pingPopupActive = false;
end;
function K.isRagdollState(T)
	if not T then
		return true;
	end;
	local l = T:GetState();
	return T.PlatformStand or l == Enum.HumanoidStateType.Physics or l == Enum.HumanoidStateType.Ragdoll or l == Enum.HumanoidStateType.FallingDown;
end;
K._wfConns = {};
function K.runDrop()
	if K.dropActive then
		return;
	end;
	if K.dropMode == "Jump" then
		local T = F.Character;
		if not T then
			return;
		end;
		local l = T:FindFirstChild("HumanoidRootPart");
		if not l then
			return;
		end;
		K.dropActive = true;
		local b = tick();
		local q;
		q = z.Heartbeat:Connect(function()
				local l = T and T:FindFirstChild("HumanoidRootPart");
				if not l then
					q:Disconnect();
					K.dropActive = false;
					return;
				end;
				if tick() - b >= K.DROP_ASCEND_DURATION then
					q:Disconnect();
					local b = RaycastParams.new();
					b.FilterDescendantsInstances = { T };
					b.FilterType = Enum.RaycastFilterType.Exclude;
					local z = workspace:Raycast(l.Position, Vector3.new(0, -2000, 0), b);
					if z then
						local b = T:FindFirstChildOfClass("Humanoid");
						local q = ((b and b.HipHeight or 2)) + (l.Size.Y / 2);
						l.CFrame = CFrame.new(l.Position.X, z.Position.Y + q, l.Position.Z);
						l.AssemblyLinearVelocity = Vector3.new(0, 0, 0);
					end;
					K.dropActive = false;
					return;
				end;
				l.AssemblyLinearVelocity = Vector3.new(l.AssemblyLinearVelocity.X, K.DROP_ASCEND_SPEED, l.AssemblyLinearVelocity.Z);
			end);
	else
		if K.autoBatEnabled then
			K.autoBatEnabled = false;
			if K.autoBatSetVisual then
				K.autoBatSetVisual(false);
			end;
			K.stopBatAimbot();
		end;
		K.dropActive = true;
		local l = z.Stepped:Connect(function()
				if not K.dropActive then
					return;
				end;
				for T, l in ipairs(T:GetPlayers()) do
					if l ~= F and l.Character then
						for T, l in ipairs(l.Character:GetChildren()) do
							if l:IsA("BasePart") then
								l.CanCollide = false;
							end;
						end;
					end;
				end;
			end);
		table.insert(K._wfConns, l);
		local b = coroutine.create(function()
				while K.dropActive do
					z.Heartbeat:Wait();
					local T = F.Character;
					local l = T and T:FindFirstChild("HumanoidRootPart");
					if not l then
						break;
					end;
					local b = l.Velocity;
					l.Velocity = b * 10000 + Vector3.new(0, 10000, 0);
					z.RenderStepped:Wait();
					if l and l.Parent then
						l.Velocity = b;
					end;
					z.Stepped:Wait();
					if l and l.Parent then
						l.Velocity = b + Vector3.new(0, .1, 0);
					end;
				end;
			end);
		table.insert(K._wfConns, b);
		coroutine.resume(b);
		task.delay(.1, function()
			K.dropActive = false;
			for T, l in ipairs(K._wfConns) do
				if typeof(l) == "RBXScriptConnection" then
					l:Disconnect();
				elseif type(l) == "thread" then
					pcall(coroutine.close, l);
				end;
			end;
			K._wfConns = {};
		end);
	end;
end;
function K.startNukeOptimizer()
	if K.nukeOn then
		return;
	end;
	K.nukeOn = true;
	local l = game:GetService("Lighting");
	local b = game:GetService("MaterialService");
	local z, q = -560, -240;
	local P = {
			"Shirt",
			"Pants",
			"ShirtGraphic",
			"Accessory",
			"Hat",
			"HairAccessory",
			"FaceAccessory",
			"NeckAccessory",
			"ShoulderAccessory",
			"FrontAccessory",
			"BackAccessory",
			"WaistAccessory",
		};
	local F = {
			"baseplate",
			"spawnlocation",
			"spawn location",
			"spawn",
		};
	local function R(T)
		if T.Name == "Overhead" then
			return;
		end;
		pcall(function()
			T:Destroy();
		end);
	end;
	local function W(T)
		for l, b in ipairs(P) do
			if T:IsA(b) then
				return true;
			end;
		end;
		return false;
	end;
	local function i(l)
		for T, b in ipairs(T:GetPlayers()) do
			if b.Character and l:IsDescendantOf(b.Character) then
				return true;
			end;
		end;
		return false;
	end;
	local function O(T)
		if T:IsA("BasePart") then
			local l = T.Position.X;
			return l < z or l > q;
		end;
		return false;
	end;
	local function p(T)
		if not T:IsA("BasePart") then
			return false;
		end;
		local l = T.Name:lower();
		for T, b in ipairs(F) do
			if l:find(b, 1, true) then
				return true;
			end;
		end;
		return false;
	end;
	local function Z(T)
		local l = T.Parent;
		while l and l ~= workspace do
			if p(l) then
				return true;
			end;
			l = l.Parent;
		end;
		return false;
	end;
	local function f(T)
		pcall(function()
			if p(T) and not i(T) then
				T.Transparency = 1;
				T.CastShadow = false;
			end;
		end);
	end;
	local function Y(T)
		pcall(function()
			if T:IsA("SurfaceAppearance") then
				R(T);
			elseif T:IsA("Decal") or T:IsA("Texture") then
				if not ((T.Name == "face" and (T.Parent and T.Parent.Name == "Head"))) then
					R(T);
				end;
			elseif T:IsA("SpecialMesh") then
				T.TextureId = "";
			elseif T:IsA("ParticleEmitter") or T:IsA("Trail") or T:IsA("Beam") then
				R(T);
			elseif T:IsA("PointLight") or T:IsA("SpotLight") or T:IsA("SurfaceLight") then
				R(T);
			elseif T:IsA("Fire") or T:IsA("Smoke") or T:IsA("Sparkles") or T:IsA("Explosion") then
				R(T);
			elseif T:IsA("Animation") or T:IsA("AnimationController") then
				R(T);
			elseif T:IsA("BasePart") then
				T.CastShadow = false;
				T.Material = Enum.Material.Plastic;
				T.MaterialVariant = "";
				T.Reflectance = 0;
			end;
		end);
	end;
	local function E()
		pcall(function()
			for T, l in ipairs(l:GetChildren()) do
				if l:IsA("Sky") then
					l:Destroy();
				end;
			end;
			local T = Instance.new("Sky");
			T.SkyboxBk = "";
			T.SkyboxDn = "";
			T.SkyboxFt = "";
			T.SkyboxLf = "";
			T.SkyboxRt = "";
			T.SkyboxUp = "";
			T.CelestialBodiesShown = false;
			T.Name = "_MoveeNukeSky";
			T.Parent = l;
		end);
	end;
	local function y()
		l.GlobalShadows = false;
		l.FogEnd = 9000000000;
		l.FogStart = 9000000000;
		l.EnvironmentDiffuseScale = 0;
		l.EnvironmentSpecularScale = 0;
		l.Brightness = 1.5;
		l.Ambient = Color3.fromRGB(60, 60, 60);
		for T, l in ipairs(l:GetChildren()) do
			if l:IsA("BloomEffect") or l:IsA("BlurEffect") or l:IsA("ColorCorrectionEffect") or l:IsA("SunRaysEffect") or l:IsA("DepthOfFieldEffect") or l:IsA("Atmosphere") or l:IsA("Clouds") then
				l:Destroy();
			end;
		end;
		E();
	end;
	local function e()
		pcall(function()
			local T = workspace.Terrain;
			T.Decoration = false;
			T.WaterWaveSize = 0;
			T.WaterWaveSpeed = 0;
			T.WaterReflectance = 0;
			T.WaterTransparency = 1;
		end);
	end;
	local function s(T)
		if not T then
			return;
		end;
		task.spawn(function()
			task.wait(.3);
			if not K.nukeOn then
				return;
			end;
			for T, l in ipairs(T:GetDescendants()) do
				if W(l) then
					R(l);
				else
					Y(l);
				end;
			end;
		end);
	end;
	pcall(function()
		(settings()).Rendering.QualityLevel = Enum.QualityLevel.Level01;
		(settings()).Rendering.MeshPartDetailLevel = Enum.MeshPartDetailLevel.Level01;
	end);
	pcall(function()
		if setfpscap then
			setfpscap(999);
		end;
	end);
	table.insert(K.nukeThreads, task.spawn(function()
		if not game:IsLoaded() then
			game.Loaded:Wait();
		end;
		y();
		e();
		for T, l in ipairs(workspace:GetDescendants()) do
			if not K.nukeOn then
				return;
			end;
			if p(l) then
				f(l);
			elseif W(l) then
				R(l);
			elseif Z(l) then
 
			elseif i(l) then
 
			elseif O(l) then
				R(l);
			else
				Y(l);
			end;
		end;
		for T, l in ipairs(workspace:GetDescendants()) do
			f(l);
		end;
	end));
	table.insert(K.nukeConns, workspace.DescendantAdded:Connect(function(T)
		if not K.nukeOn then
			return;
		end;
		task.defer(function()
			if not K.nukeOn then
				return;
			end;
			if p(T) then
				f(T);
				return;
			end;
			if W(T) then
				R(T);
			elseif Z(T) then
 
			elseif i(T) then
 
			elseif O(T) then
				R(T);
			else
				Y(T);
			end;
		end);
	end));
	table.insert(K.nukeConns, l.DescendantAdded:Connect(function(T)
		if not K.nukeOn then
			return;
		end;
		if T:IsA("Atmosphere") or T:IsA("Clouds") or T:IsA("PostEffect") then
			R(T);
		end;
	end));
	table.insert(K.nukeConns, b.DescendantAdded:Connect(function(T)
		if not K.nukeOn then
			return;
		end;
		R(T);
	end));
	for T, l in ipairs(T:GetPlayers()) do
		s(l.Character);
		table.insert(K.nukeConns, l.CharacterAdded:Connect(s));
	end;
	table.insert(K.nukeConns, T.PlayerAdded:Connect(function(T)
		table.insert(K.nukeConns, T.CharacterAdded:Connect(s));
	end));
	table.insert(K.nukeThreads, task.spawn(function()
		while K.nukeOn do
			task.wait(15);
			pcall(function()
				collectgarbage("collect");
			end);
		end;
	end));
end;
function K.stopNukeOptimizer()
	K.nukeOn = false;
	for T, l in ipairs(K.nukeConns) do
		pcall(function()
			l:Disconnect();
		end);
	end;
	K.nukeConns = {};
	K.nukeThreads = {};
end;
function K.startRemoveAcc()
	if K.removeAccEnabled then
		return;
	end;
	K.removeAccEnabled = true;
	local function T()
		if not K.removeAccEnabled then
			return;
		end;
		local T = F.Character;
		if not T then
			return;
		end;
		for T, l in ipairs(T:GetDescendants()) do
			if l:IsA("Accessory") or l:IsA("Hat") then
				if not K.removedAccessories[l] then
					K.removedAccessories[l] = true;
					pcall(function()
						l:Destroy();
					end);
				end;
			end;
		end;
	end;
	T();
	K.removeAccConn = F.CharacterAdded:Connect(function()
			task.wait(.5);
			if K.removeAccEnabled then
				T();
			end;
		end);
end;
function K.stopRemoveAcc()
	K.removeAccEnabled = false;
	if K.removeAccConn then
		K.removeAccConn:Disconnect();
		K.removeAccConn = nil;
	end;
	K.removedAccessories = {};
end;
function K.destroyMobileButtons()
	if K.mobGuiRef then
		pcall(function()
			K.mobGuiRef:Destroy();
		end);
		K.mobGuiRef = nil;
	end;
	for T, l in ipairs({ "MoveeMobileButtons" }) do
		local b = (game:GetService("CoreGui")):FindFirstChild(l);
		if b then
			b:Destroy();
		end;
		local z = F:FindFirstChild("PlayerGui");
		if z then
			local T = z:FindFirstChild(l);
			if T then
				T:Destroy();
			end;
		end;
	end;
	K.mobBtnRefs = {};
end;
function K.loadBtnPositions()
	if not ((isfile and isfile(K.MOB_POS_FILE))) then
		return {};
	end;
	local T, l = pcall(function()
			return P:JSONDecode(readfile(K.MOB_POS_FILE));
		end);
	if T and type(l) == "table" then
		return l;
	end;
	return {};
end;
function K.saveBtnPositions()
	if not writefile then
		return;
	end;
	if not K.mobGuiRef then
		return;
	end;
	local T = {};
	for l, b in ipairs(K.mobGuiRef:GetDescendants()) do
		if b:IsA("TextButton") and b:GetAttribute("BtnKey") then
			local l = b:GetAttribute("BtnKey");
			T[l] = {
					xs = b.Position.X.Scale,
					xo = b.Position.X.Offset,
					ys = b.Position.Y.Scale,
					yo = b.Position.Y.Offset,
					dragged = b:GetAttribute("Dragged") == true,
				};
		end;
	end;
	pcall(function()
		if isfile and isfile(K.MOB_POS_FILE) then
			local l = P:JSONDecode(readfile(K.MOB_POS_FILE));
			if type(l) == "table" then
				for l, b in pairs(l) do
					if T[l] == nil then
						T[l] = b;
					end;
				end;
			end;
		end;
	end);
	pcall(function()
		writefile(K.MOB_POS_FILE, P:JSONEncode(T));
	end);
end;
function K.resetMobilePositions()
	if isfile and isfile(K.MOB_POS_FILE) then
		pcall(function()
			os.remove(K.MOB_POS_FILE);
		end);
	end;
	K.buildMobileButtons();
end;
local zZ = { "autoLeft", "autoRight" };
local qZ = nil;
local function PZ(T, l)
	if l then
		for l, b in ipairs(zZ) do
			if b ~= T then
				if b == "autoLeft" then
					K.autoLeftEnabled = false;
					if K.mobBtnRefs[b] then
						K.mobBtnRefs[b](false);
					end;
					if K.autoLeftSetVisual then
						K.autoLeftSetVisual(false);
					end;
				elseif b == "autoRight" then
					K.autoRightEnabled = false;
					if K.mobBtnRefs[b] then
						K.mobBtnRefs[b](false);
					end;
					if K.autoRightSetVisual then
						K.autoRightSetVisual(false);
					end;
				end;
			end;
		end;
		qZ = T;
	else
		if qZ == T then
			qZ = nil;
		end;
	end;
end;
local FZ = { "carrySpeed", "lagger", "laggerCarry" };
local KZ = nil;
local function RZ(T, l)
	if l then
		for l, b in ipairs(FZ) do
			if b ~= T then
				if b == "carrySpeed" then
					K.carrySpeedActive = false;
					if K.mobBtnRefs[b] then
						K.mobBtnRefs[b](false);
					end;
					if K.carryModeBtn then
						K.carryModeBtn.Text = "Carry Off";
					end;
				elseif b == "lagger" then
					K.laggerModeEnabled = false;
					if K.mobBtnRefs[b] then
						K.mobBtnRefs[b](false);
					end;
					if K.laggerModeBtn then
						K.laggerModeBtn.Text = "Lag Off";
					end;
				elseif b == "laggerCarry" then
					K.laggerModeEnabled = false;
					K.carrySpeedActive = false;
					K.laggerCarryActive = false;
					if K.mobBtnRefs[b] then
						K.mobBtnRefs[b](false);
					end;
					if K.laggerModeBtn then
						K.laggerModeBtn.Text = "Lag Off";
					end;
					if K.carryModeBtn then
						K.carryModeBtn.Text = "Carry Off";
					end;
				end;
			end;
		end;
		KZ = T;
	else
		if KZ == T then
			KZ = nil;
		end;
	end;
end;
local WZ = { "autoBat", "bypass" };
local iZ = nil;
local function OZ(T, l)
	if l then
		for l, b in ipairs(WZ) do
			if b ~= T then
				if b == "autoBat" then
					K.autoBatEnabled = false;
					if K.mobBtnRefs[b] then
						K.mobBtnRefs[b](false);
					end;
					if K.autoBatSetVisual then
						K.autoBatSetVisual(false);
					end;
					K.stopBatAimbot();
				elseif b == "bypass" then
					K.bypassAimbotEnabled = false;
					if K.mobBtnRefs[b] then
						K.mobBtnRefs[b](false);
					end;
					if K.setBypassVisual then
						K.setBypassVisual(false);
					end;
					K.stopBypassAimbot();
				end;
			end;
		end;
		iZ = T;
	else
		if iZ == T then
			iZ = nil;
		end;
	end;
end;
function K.buildMobileButtons()
	K.destroyMobileButtons();
	if not K.mobileButtonsEnabled then
		return;
	end;
	local T = K.loadBtnPositions();
	local b = math.max(55, math.floor(K.mobileButtonsSize * .65));
	local z = 9;
	local q = 7;
	local R = 2;
	local W = 4;
	local i = (q * 2 + R * b) + ((R - 1)) * z;
	local O = (q * 2 + W * b) + ((W - 1)) * z;
	local p = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(800, 600);
	local f = T._panel;
	local Y = (p.X - i) - 10;
	local E = ((p.Y - O)) / 2;
	local y = f and f.xo or Y;
	local e = f and f.yo or E;
	local s = Instance.new("ScreenGui");
	s.Name = "MoveeMobileButtons";
	s.ResetOnSpawn = false;
	s.DisplayOrder = 15;
	s.IgnoreGuiInset = true;
	if syn and syn.protect_gui then
		pcall(function()
			syn.protect_gui(s);
		end);
	end;
	if not pcall(function()
		s.Parent = game:GetService("CoreGui");
	end) then
		s.Parent = F:WaitForChild("PlayerGui");
	end;
	K.mobGuiRef = s;
	local d = Instance.new("Frame");
	d.Name = "MobPanel";
	d.Size = UDim2.new(0, i, 0, O);
	if f then
		d.Position = UDim2.new(f.xs or 0, f.xo or Y, f.ys or 0, f.yo or E);
	else
		d.Position = UDim2.new(0, y, 0, e);
	end;
	d.BackgroundTransparency = 1;
	d.BorderSizePixel = 0;
	d.ZIndex = 100;
	d.Parent = s;
	local M = { dragging = false, start = nil, startPos = nil };
	d.InputBegan:Connect(function(T)
		if K.uiLocked then
			return;
		end;
		if T.UserInputType == Enum.UserInputType.MouseButton1 or T.UserInputType == Enum.UserInputType.Touch then
			M.dragging = true;
			M.start = T.Position;
			M.startPos = d.Position;
		end;
	end);
	d.InputChanged:Connect(function(T)
		if M.dragging and ((T.UserInputType == Enum.UserInputType.MouseMovement or T.UserInputType == Enum.UserInputType.Touch)) then
			local l = T.Position - M.start;
			d.Position = UDim2.new(M.startPos.X.Scale, M.startPos.X.Offset + l.X, M.startPos.Y.Scale, M.startPos.Y.Offset + l.Y);
		end;
	end);
	d.InputEnded:Connect(function(T)
		if T.UserInputType == Enum.UserInputType.MouseButton1 or T.UserInputType == Enum.UserInputType.Touch then
			if M.dragging then
				M.dragging = false;
				local T = {
						xs = d.Position.X.Scale,
						xo = d.Position.X.Offset,
						ys = d.Position.Y.Scale,
						yo = d.Position.Y.Offset,
					};
				local l = K.loadBtnPositions();
				l._panel = T;
				pcall(function()
					writefile(K.MOB_POS_FILE, P:JSONEncode(l));
				end);
			end;
		end;
	end);
	local w = {
			{
				"drop",
				"DROP",
				0,
				0,
				false,
			},
			{
				"autoLeft",
				"AUTO\nLEFT",
				1,
				0,
				true,
			},
			{
				"autoBat",
				"AIMBOT",
				0,
				1,
				true,
			},
			{
				"autoRight",
				"AUTO\nRIGHT",
				1,
				1,
				true,
			},
			{
				"tpDown",
				"TP\nDOWN",
				0,
				2,
				false,
			},
			{
				"carrySpeed",
				"CARRY\nSPEED",
				1,
				2,
				true,
			},
			{
				"lagger",
				"LAGGER\nMODE",
				0,
				3,
				true,
			},
			{
				"laggerCarry",
				"LAGGER\nCARRY",
				1,
				3,
				true,
			},
		};
	local function Q(P, F, R, W, i)
		local O = q + R * ((b + z));
		local p = q + W * ((b + z));
		local f = Instance.new("TextButton");
		f.Name = "Btn_" .. P;
		f.Size = UDim2.new(0, b, 0, b);
		if T[P] and T[P].dragged then
			local l = T[P];
			f.Position = UDim2.new(l.xs or 0, l.xo or O, l.ys or 0, l.yo or p);
			f:SetAttribute("Dragged", true);
		else
			f.Position = UDim2.new(0, O, 0, p);
		end;
		f.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
		f.Text = F;
		f.TextColor3 = Color3.fromRGB(255, 255, 255);
		f.TextSize = 12;
		f.Font = Enum.Font.GothamBold;
		f.TextWrapped = true;
		f.BorderSizePixel = 0;
		f.ZIndex = 101;
		f.AutoButtonColor = false;
		f:SetAttribute("BtnKey", P);
		f.Parent = d;
		(Instance.new("UICorner", f)).CornerRadius = UDim.new(0, 10);
		f.TextStrokeTransparency = 1;
		local Y = Instance.new("UIStroke", f);
		Y.Color = Color3.fromRGB(80, 80, 80);
		Y.Thickness = 1.2;
		Y.Transparency = .5;
		local E = false;
		local function y(T)
			E = T;
			if T then
				(l:Create(f, TweenInfo.new(.12), { BackgroundColor3 = Z, TextColor3 = Color3.fromRGB(0, 0, 0) })):Play();
				(l:Create(Y, TweenInfo.new(.12), { Color = Z, Transparency = 0 })):Play();
			else
				(l:Create(f, TweenInfo.new(.12), { BackgroundColor3 = Color3.fromRGB(0, 0, 0), TextColor3 = Color3.fromRGB(255, 255, 255) })):Play();
				(l:Create(Y, TweenInfo.new(.12), { Color = Color3.fromRGB(80, 80, 80), Transparency = .5 })):Play();
			end;
		end;
		K.mobBtnRefs[P] = y;
		local e = {
				dragging = false,
				start = nil,
				startPos = nil,
				moved = false,
			};
		f.InputBegan:Connect(function(T)
			if K.uiLocked then
				return;
			end;
			if T.UserInputType == Enum.UserInputType.MouseButton1 or T.UserInputType == Enum.UserInputType.Touch then
				e.dragging = true;
				e.moved = false;
				e.start = T.Position;
				e.startPos = f.Position;
			end;
		end);
		f.InputChanged:Connect(function(T)
			if e.dragging and ((T.UserInputType == Enum.UserInputType.MouseMovement or T.UserInputType == Enum.UserInputType.Touch)) then
				local l = T.Position - e.start;
				if math.abs(l.X) > 3 or math.abs(l.Y) > 3 then
					e.moved = true;
				end;
				f.Position = UDim2.new(e.startPos.X.Scale, e.startPos.X.Offset + l.X, e.startPos.Y.Scale, e.startPos.Y.Offset + l.Y);
			end;
		end);
		f.InputEnded:Connect(function(T)
			if T.UserInputType == Enum.UserInputType.MouseButton1 or T.UserInputType == Enum.UserInputType.Touch then
				if e.dragging then
					e.dragging = false;
					if e.moved then
						f:SetAttribute("Dragged", true);
						K.saveBtnPositions();
					end;
				end;
			end;
		end);
		f.Activated:Connect(function()
			if e.moved then
				return;
			end;
			if P == "drop" then
				(l:Create(f, TweenInfo.new(.1), { BackgroundColor3 = Z, TextColor3 = Color3.fromRGB(0, 0, 0) })):Play();
				(l:Create(Y, TweenInfo.new(.1), { Color = Z, Transparency = 0 })):Play();
				task.delay(.3, function()
					if not E then
						(l:Create(f, TweenInfo.new(.1), { BackgroundColor3 = Color3.fromRGB(0, 0, 0), TextColor3 = Color3.fromRGB(255, 255, 255) })):Play();
						(l:Create(Y, TweenInfo.new(.1), { Color = Color3.fromRGB(80, 80, 80), Transparency = .5 })):Play();
					end;
				end);
				K.runDrop();
			elseif P == "tpDown" then
				(l:Create(f, TweenInfo.new(.1), { BackgroundColor3 = Z, TextColor3 = Color3.fromRGB(0, 0, 0) })):Play();
				(l:Create(Y, TweenInfo.new(.1), { Color = Z, Transparency = 0 })):Play();
				task.delay(.3, function()
					if not E then
						(l:Create(f, TweenInfo.new(.1), { BackgroundColor3 = Color3.fromRGB(0, 0, 0), TextColor3 = Color3.fromRGB(255, 255, 255) })):Play();
						(l:Create(Y, TweenInfo.new(.1), { Color = Color3.fromRGB(80, 80, 80), Transparency = .5 })):Play();
					end;
				end);
				K.runTPFloor();
			elseif P == "autoLeft" then
				local T = not K.autoLeftEnabled;
				PZ(P, T);
				K.autoLeftEnabled = T;
				if T then
					if K.autoRightEnabled then
						K.autoRightEnabled = false;
						if K.mobBtnRefs.autoRight then
							K.mobBtnRefs.autoRight(false);
						end;
						if K.autoRightSetVisual then
							K.autoRightSetVisual(false);
						end;
					end;
					if K.autoBatEnabled then
						K.autoBatEnabled = false;
						if K.mobBtnRefs.autoBat then
							K.mobBtnRefs.autoBat(false);
						end;
						if K.autoBatSetVisual then
							K.autoBatSetVisual(false);
						end;
						K.stopBatAimbot();
					end;
					K.startAutoLeft();
				else
					K.stopAutoLeft();
				end;
				y(K.autoLeftEnabled);
				if K.autoLeftSetVisual then
					K.autoLeftSetVisual(K.autoLeftEnabled);
				end;
				saveLuaStudioConfig();
			elseif P == "autoRight" then
				local T = not K.autoRightEnabled;
				PZ(P, T);
				K.autoRightEnabled = T;
				if T then
					if K.autoLeftEnabled then
						K.autoLeftEnabled = false;
						if K.mobBtnRefs.autoLeft then
							K.mobBtnRefs.autoLeft(false);
						end;
						if K.autoLeftSetVisual then
							K.autoLeftSetVisual(false);
						end;
					end;
					if K.autoBatEnabled then
						K.autoBatEnabled = false;
						if K.mobBtnRefs.autoBat then
							K.mobBtnRefs.autoBat(false);
						end;
						if K.autoBatSetVisual then
							K.autoBatSetVisual(false);
						end;
						K.stopBatAimbot();
					end;
					K.startAutoRight();
				else
					K.stopAutoRight();
				end;
				y(K.autoRightEnabled);
				if K.autoRightSetVisual then
					K.autoRightSetVisual(K.autoRightEnabled);
				end;
				saveLuaStudioConfig();
			elseif P == "autoBat" then
				local T = not K.autoBatEnabled;
				OZ(P, T);
				K.autoBatEnabled = T;
				if T then
					if K.autoLeftEnabled then
						K.autoLeftEnabled = false;
						if K.mobBtnRefs.autoLeft then
							K.mobBtnRefs.autoLeft(false);
						end;
						if K.autoLeftSetVisual then
							K.autoLeftSetVisual(false);
						end;
						K.stopAutoLeft();
					end;
					if K.autoRightEnabled then
						K.autoRightEnabled = false;
						if K.mobBtnRefs.autoRight then
							K.mobBtnRefs.autoRight(false);
						end;
						if K.autoRightSetVisual then
							K.autoRightSetVisual(false);
						end;
						K.stopAutoRight();
					end;
					K.queueAutoBatStart();
				else
					K.stopBatAimbot();
				end;
				y(K.autoBatEnabled);
				if K.autoBatSetVisual then
					K.autoBatSetVisual(K.autoBatEnabled);
				end;
				saveLuaStudioConfig();
			elseif P == "lagger" then
				local T = not K.laggerModeEnabled;
				RZ(P, T);
				K.laggerModeEnabled = T;
				y(K.laggerModeEnabled);
				if K.laggerModeBtn then
					K.laggerModeBtn.Text = K.laggerModeEnabled and "Lag On" or "Lag Off";
				end;
				K.refreshSpeedModeLabel();
				saveLuaStudioConfig();
			elseif P == "carrySpeed" then
				local T = not K.carrySpeedActive;
				RZ(P, T);
				K.carrySpeedActive = T;
				y(K.carrySpeedActive);
				if K.carryModeBtn then
					K.carryModeBtn.Text = K.carrySpeedActive and "Carry On" or "Carry Off";
				end;
				K.refreshSpeedModeLabel();
				saveLuaStudioConfig();
			elseif P == "laggerCarry" then
				local T = not K.laggerCarryActive;
				RZ(P, T);
				K.laggerCarryActive = T;
				K.laggerModeEnabled = K.laggerCarryActive;
				K.carrySpeedActive = K.laggerCarryActive;
				y(K.laggerCarryActive);
				if K.laggerModeBtn then
					K.laggerModeBtn.Text = K.laggerModeEnabled and "Lag On" or "Lag Off";
				end;
				if K.carryModeBtn then
					K.carryModeBtn.Text = K.carrySpeedActive and "Carry On" or "Carry Off";
				end;
				K.refreshSpeedModeLabel();
				saveLuaStudioConfig();
			end;
		end);
		return f, y;
	end;
	for T, l in ipairs(w) do
		Q(l[1], l[2], l[3], l[4], l[5]);
	end;
	if K.mobBtnRefs.autoLeft then
		K.mobBtnRefs.autoLeft(K.autoLeftEnabled);
	end;
	if K.mobBtnRefs.autoRight then
		K.mobBtnRefs.autoRight(K.autoRightEnabled);
	end;
	if K.mobBtnRefs.autoBat then
		K.mobBtnRefs.autoBat(K.autoBatEnabled);
	end;
	if K.mobBtnRefs.lagger then
		K.mobBtnRefs.lagger(K.laggerModeEnabled);
	end;
	if K.mobBtnRefs.carrySpeed then
		K.mobBtnRefs.carrySpeed(K.carrySpeedActive);
	end;
	if K.mobBtnRefs.laggerCarry then
		K.mobBtnRefs.laggerCarry(K.laggerCarryActive or (K.laggerModeEnabled and K.carrySpeedActive));
	end;
	local u = y + q;
	local k = ((e + q) + b) + z;
	local v = (u - b) - z;
	local N = k;
	local A = Instance.new("TextButton");
	A.Name = "BypassBtn";
	A.Size = UDim2.new(0, b, 0, b);
	if T.bypass and T.bypass.dragged then
		local l = T.bypass;
		A.Position = UDim2.new(l.xs or 0, l.xo or 0, l.ys or 0, l.yo or 0);
		A:SetAttribute("Dragged", true);
	else
		A.Position = UDim2.new(0, v, 0, N);
	end;
	A.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
	A.Text = "TP BAT";
	A.TextColor3 = Color3.fromRGB(255, 255, 255);
	A.TextSize = 12;
	A.Font = Enum.Font.GothamBold;
	A.TextWrapped = true;
	A.BorderSizePixel = 0;
	A.ZIndex = 101;
	A.AutoButtonColor = false;
	A:SetAttribute("BtnKey", "bypass");
	A.Parent = s;
	(Instance.new("UICorner", A)).CornerRadius = UDim.new(0, 10);
	local H = Instance.new("UIStroke", A);
	H.Color = Color3.fromRGB(80, 80, 80);
	H.Thickness = 1.2;
	H.Transparency = .5;
	local o = K.bypassAimbotEnabled;
	local function r(T)
		o = T;
		if T then
			(l:Create(A, TweenInfo.new(.12), { BackgroundColor3 = Z, TextColor3 = Color3.fromRGB(0, 0, 0) })):Play();
			(l:Create(H, TweenInfo.new(.12), { Color = Z, Transparency = 0 })):Play();
		else
			(l:Create(A, TweenInfo.new(.12), { BackgroundColor3 = Color3.fromRGB(0, 0, 0), TextColor3 = Color3.fromRGB(255, 255, 255) })):Play();
			(l:Create(H, TweenInfo.new(.12), { Color = Color3.fromRGB(80, 80, 80), Transparency = .5 })):Play();
		end;
	end;
	K.mobBtnRefs.bypass = r;
	r(o);
	local B = {
			dragging = false,
			start = nil,
			startPos = nil,
			moved = false,
		};
	A.InputBegan:Connect(function(T)
		if K.uiLocked then
			return;
		end;
		if T.UserInputType == Enum.UserInputType.MouseButton1 or T.UserInputType == Enum.UserInputType.Touch then
			B.dragging = true;
			B.moved = false;
			B.start = T.Position;
			B.startPos = A.Position;
		end;
	end);
	A.InputChanged:Connect(function(T)
		if B.dragging and ((T.UserInputType == Enum.UserInputType.MouseMovement or T.UserInputType == Enum.UserInputType.Touch)) then
			local l = T.Position - B.start;
			if math.abs(l.X) > 3 or math.abs(l.Y) > 3 then
				B.moved = true;
			end;
			A.Position = UDim2.new(B.startPos.X.Scale, B.startPos.X.Offset + l.X, B.startPos.Y.Scale, B.startPos.Y.Offset + l.Y);
		end;
	end);
	A.InputEnded:Connect(function(T)
		if T.UserInputType == Enum.UserInputType.MouseButton1 or T.UserInputType == Enum.UserInputType.Touch then
			if B.dragging then
				B.dragging = false;
				if B.moved then
					A:SetAttribute("Dragged", true);
					K.saveBtnPositions();
				end;
			end;
		end;
	end);
	A.Activated:Connect(function()
		if B.moved then
			return;
		end;
		local T = not K.bypassAimbotEnabled;
		OZ("bypass", T);
		K.bypassAimbotEnabled = T;
		if T then
			if K.autoBatEnabled then
				K.autoBatEnabled = false;
				if K.mobBtnRefs.autoBat then
					K.mobBtnRefs.autoBat(false);
				end;
				if K.autoBatSetVisual then
					K.autoBatSetVisual(false);
				end;
				K.stopBatAimbot();
			end;
			K.startBypassAimbot();
		else
			K.stopBypassAimbot();
		end;
		r(K.bypassAimbotEnabled);
		if K.setBypassVisual then
			K.setBypassVisual(K.bypassAimbotEnabled);
		end;
		saveLuaStudioConfig();
	end);
	K.bypassFloatingBtn = A;
	local C = v;
	local I = (N + b) + z;
	local x = Instance.new("TextButton");
	x.Name = "InstaResetBtn";
	x.Size = UDim2.new(0, b, 0, b);
	if T.instaReset and T.instaReset.dragged then
		local l = T.instaReset;
		x.Position = UDim2.new(l.xs or 0, l.xo or 0, l.ys or 0, l.yo or 0);
		x:SetAttribute("Dragged", true);
	else
		x.Position = UDim2.new(0, C, 0, I);
	end;
	x.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
	x.Text = "INSTA\nRESET";
	x.TextColor3 = Color3.fromRGB(255, 255, 255);
	x.TextSize = 12;
	x.Font = Enum.Font.GothamBold;
	x.TextWrapped = true;
	x.BorderSizePixel = 0;
	x.ZIndex = 101;
	x.AutoButtonColor = false;
	x:SetAttribute("BtnKey", "instaReset");
	x.Parent = s;
	(Instance.new("UICorner", x)).CornerRadius = UDim.new(0, 10);
	local n = Instance.new("UIStroke", x);
	n.Color = Color3.fromRGB(80, 80, 80);
	n.Thickness = 1.2;
	n.Transparency = .5;
	local t = {
			dragging = false,
			start = nil,
			startPos = nil,
			moved = false,
		};
	x.InputBegan:Connect(function(T)
		if K.uiLocked then
			return;
		end;
		if T.UserInputType == Enum.UserInputType.MouseButton1 or T.UserInputType == Enum.UserInputType.Touch then
			t.dragging = true;
			t.moved = false;
			t.start = T.Position;
			t.startPos = x.Position;
		end;
	end);
	x.InputChanged:Connect(function(T)
		if t.dragging and ((T.UserInputType == Enum.UserInputType.MouseMovement or T.UserInputType == Enum.UserInputType.Touch)) then
			local l = T.Position - t.start;
			if math.abs(l.X) > 3 or math.abs(l.Y) > 3 then
				t.moved = true;
			end;
			x.Position = UDim2.new(t.startPos.X.Scale, t.startPos.X.Offset + l.X, t.startPos.Y.Scale, t.startPos.Y.Offset + l.Y);
		end;
	end);
	x.InputEnded:Connect(function(T)
		if T.UserInputType == Enum.UserInputType.MouseButton1 or T.UserInputType == Enum.UserInputType.Touch then
			if t.dragging then
				t.dragging = false;
				if t.moved then
					x:SetAttribute("Dragged", true);
					K.saveBtnPositions();
				end;
			end;
		end;
	end);
	x.Activated:Connect(function()
		if t.moved then
			return;
		end;
		(l:Create(x, TweenInfo.new(.1), { BackgroundColor3 = Z, TextColor3 = Color3.fromRGB(0, 0, 0) })):Play();
		(l:Create(n, TweenInfo.new(.1), { Color = Z, Transparency = 0 })):Play();
		task.delay(.3, function()
			(l:Create(x, TweenInfo.new(.1), { BackgroundColor3 = Color3.fromRGB(0, 0, 0), TextColor3 = Color3.fromRGB(255, 255, 255) })):Play();
			(l:Create(n, TweenInfo.new(.1), { Color = Color3.fromRGB(80, 80, 80), Transparency = .5 })):Play();
		end);
		K.cursedInstaReset();
	end);
	K.instaResetFloatingBtn = x;
end;
K.mobBtnRefs = K.mobBtnRefs or {};
local pZ = "LuaStudioConfig.json";
local ZZ = { Theme = "Default" };
local fZ = { Default = { Accent = Z, AccentDim = Color3.fromRGB(180, 150, 0) } };
local function YZ()
	if type(readfile) ~= "function" or type(isfile) ~= "function" then
		return;
	end;
	local T, l = pcall(function()
			if not isfile(pZ) then
				return nil;
			end;
			return P:JSONDecode(readfile(pZ));
		end);
	if T and type(l) == "table" then
		if type(l.Theme) == "string" and fZ[l.Theme] then
			ZZ.Theme = l.Theme;
		end;
		if type(l.normalSpeed) == "number" then
			K.NS = l.normalSpeed;
		end;
		if type(l.carrySpeed) == "number" then
			K.CS = l.carrySpeed;
		end;
		if type(l.laggerSpeed) == "number" then
			K.LAGGER_SPEED = l.laggerSpeed;
		end;
		if type(l.laggerCarrySpeed) == "number" then
			K.LAGGER_CARRY_SPEED = l.laggerCarrySpeed;
		end;
		if type(l.grabRadius) == "number" then
			K.Steal.StealRadius = l.grabRadius;
		end;
		if type(l.stealDuration) == "number" then
			K.Steal.StealDuration = l.stealDuration;
		end;
		if type(l.stealMode) == "string" then
			K.stealMode = l.stealMode;
		end;
		if type(l.autoTPHeight) == "number" then
			K.autoTPHeight = l.autoTPHeight;
		end;
		if type(l.fovValue) == "number" then
			K.fovValue = l.fovValue;
		end;
		if type(l.uiScale) == "number" then
			K.uiScale = l.uiScale;
		end;
		if type(l.bgTransparency) == "number" then
			K.bgTransparency = l.bgTransparency;
		end;
		if type(l.uiLocked) == "boolean" then
			K.uiLocked = l.uiLocked;
		end;
		if type(l.infJumpMode) == "string" then
			K.infJumpMode = l.infJumpMode;
		end;
		if type(l.dropMode) == "string" then
			K.dropMode = l.dropMode;
		end;
		if type(l.mobileButtonsSize) == "number" then
			K.mobileButtonsSize = l.mobileButtonsSize;
		end;
		if type(l.skyTheme) == "string" then
			K.currentSkyTheme = l.skyTheme;
		end;
		if type(l.stealBarSize) == "number" then
			K.stealBarSize = l.stealBarSize;
		end;
		if type(l.stealBarScale) == "number" then
			K.stealBarScale = l.stealBarScale;
		end;
		if l.carrySpeedActive ~= nil then
			K.carrySpeedActive = l.carrySpeedActive;
		end;
		if l.laggerModeEnabled ~= nil then
			K.laggerModeEnabled = l.laggerModeEnabled;
		end;
		if l.laggerCarryActive ~= nil then
			K.laggerCarryActive = l.laggerCarryActive;
		end;
		if l.autoSwing ~= nil then
			K.autoSwingEnabled = l.autoSwing == true;
		end;
		if l.ragdollGui ~= nil then
			K.ragdollGuiEnabled = l.ragdollGui == true;
		end;
		if l.circleButtonsEnabled ~= nil then
			K.circleButtonsEnabled = l.circleButtonsEnabled == true;
		end;
		if l.perButtonDrag ~= nil then
			K.perButtonDragEnabled = l.perButtonDrag == true;
		end;
		if l.mobileButtonsEnabled ~= nil then
			K.mobileButtonsEnabled = l.mobileButtonsEnabled;
		end;
		if l.medusaReset ~= nil then
			K.medusaResetEnabled = l.medusaReset == true;
		end;
		if l.autoMoveSwing ~= nil then
			K.autoMoveSwingEnabled = l.autoMoveSwing == true;
		end;
		if l.autoSwitchSpeed ~= nil then
			K.autoSwitchSpeedEnabled = l.autoSwitchSpeed == true;
		end;
		if l.showPlayerSpeeds ~= nil then
			K.showPlayerSpeeds = l.showPlayerSpeeds == true;
		end;
		if l.nukeOptimizer ~= nil then
			K.nukeOn = l.nukeOptimizer;
		end;
		if l.removeAcc ~= nil then
			K.removeAccEnabled = l.removeAcc;
		end;
		if l.playerESPEnabled ~= nil then
			K.playerESPEnabled = l.playerESPEnabled;
		end;
		if l.antiRagdoll ~= nil then
			K.antiRagdollEnabled = l.antiRagdoll;
		end;
		if l.autoStealEnabled ~= nil then
			K.Steal.AutoStealEnabled = l.autoStealEnabled;
		end;
		if l.infiniteJump ~= nil then
			K.infJumpEnabled = l.infiniteJump;
		end;
		if l.medusaCounter ~= nil then
			K.medusaCounterEnabled = l.medusaCounter;
		end;
		if l.batCounter ~= nil then
			K.batCounterEnabled = l.batCounter;
		end;
		if l.unwalkEnabled ~= nil then
			K.unwalkEnabled = l.unwalkEnabled;
		end;
		if l.autoCarryOnGrab ~= nil then
			K.autoCarryOnGrab = l.autoCarryOnGrab == true;
		end;
		if l.pingAlertEnabled ~= nil then
			K.pingAlertEnabled = l.pingAlertEnabled == true;
		end;
		if l.antiLag ~= nil then
			K.antiLagEnabled = l.antiLag;
		end;
		if l.stretchRez ~= nil then
			K.stretchRezEnabled = l.stretchRez;
		end;
		if l.autoTPEnabled ~= nil then
			K.autoTPEnabled = l.autoTPEnabled;
		end;
		if l.antiKick ~= nil then
			K.antiKickEnabled = l.antiKick;
		end;
		if l.autoBat ~= nil then
			K.autoBatEnabled = l.autoBat;
		end;
		if l.semiHoldMin then
			K.Semi.HoldMin = l.semiHoldMin;
		end;
		if l.semiHoldMax then
			K.Semi.HoldMax = l.semiHoldMax;
		end;
		if l.semiEntryDelay then
			K.Semi.EntryDelay = l.semiEntryDelay;
		end;
		if l.semiStealRange then
			K.Semi.StealRange = l.semiStealRange;
		end;
		if l.semiPrimeRange then
			K.Semi.PrimeRange = l.semiPrimeRange;
		end;
		if l.lineESPEnabled ~= nil then
			K.lineESPEnabled = l.lineESPEnabled;
		end;
		if l.speedESPEnabled ~= nil then
			K.speedESPEnabled = l.speedESPEnabled;
		end;
		if l.autoResetOnDeath ~= nil then
			K.autoResetOnDeath = l.autoResetOnDeath;
		end;
		if type(l.animPack) == "string" then
			K.animPack = l.animPack;
		end;
		if l.headlessEnabled ~= nil then
			K.headlessEnabled = l.headlessEnabled;
		end;
		if l.korbloxEnabled ~= nil then
			K.korbloxEnabled = l.korbloxEnabled;
		end;
		if l.bodyLockEnabled ~= nil then
			K.bodyLockEnabled = l.bodyLockEnabled;
		end;
		if type(l.bodyLockRadius) == "number" then
			K.bodyLockRadius = l.bodyLockRadius;
		end;
		if l.bypassAimbotEnabled ~= nil then
			K.bypassAimbotEnabled = l.bypassAimbotEnabled;
		end;
		K.bypassAimbotMode = "TPBat";
		if l.animPackEnabled ~= nil then
			K.animPackEnabled = l.animPackEnabled;
		end;
		local function T(T, l)
			if type(l) ~= "table" then
				return;
			end;
			if l.kb and Enum.KeyCode[l.kb] then
				T.kb = Enum.KeyCode[l.kb];
			else
				T.kb = nil;
			end;
			if l.gp and Enum.KeyCode[l.gp] then
				T.gp = Enum.KeyCode[l.gp];
			else
				T.gp = nil;
			end;
		end;
		if l.dropBrainrotKey then
			T(K.KB.DropBrainrot, l.dropBrainrotKey);
		end;
		if l.autoLeftKey then
			T(K.KB.AutoLeft, l.autoLeftKey);
		end;
		if l.autoRightKey then
			T(K.KB.AutoRight, l.autoRightKey);
		end;
		if l.autoBatKey then
			T(K.KB.AutoBat, l.autoBatKey);
		end;
		if l.laggerToggleKey then
			T(K.KB.LaggerToggle, l.laggerToggleKey);
		end;
		if l.tpFloorKey then
			T(K.KB.TPFloor, l.tpFloorKey);
		end;
		if l.instaResetKey then
			T(K.KB.InstaReset, l.instaResetKey);
		end;
		if l.guiHideKey then
			T(K.KB.GuiHide, l.guiHideKey);
		end;
		if l.speedToggleKey then
			T(K.KB.SpeedToggle, l.speedToggleKey);
		end;
		if l.bypassAimbotKey then
			T(K.KB.BypassAimbot, l.bypassAimbotKey);
		end;
		if l.bodyLockKey then
			T(K.KB.BodyLock, l.bodyLockKey);
		end;
	end;
end;
local function EZ()
	if type(writefile) ~= "function" then
		return;
	end;
	local function T(T)
		if T.kb then
			return { kb = T.kb.Name, gp = T.gp and T.gp.Name };
		elseif T.gp then
			return { gp = T.gp.Name };
		else
			return { kb = nil, gp = nil };
		end;
	end;
	local l = {
			Theme = ZZ.Theme,
			normalSpeed = K.NS,
			carrySpeed = K.CS,
			laggerSpeed = K.LAGGER_SPEED,
			laggerCarrySpeed = K.LAGGER_CARRY_SPEED,
			grabRadius = K.Steal.StealRadius,
			stealDuration = K.Steal.StealDuration,
			stealMode = K.stealMode,
			autoTPHeight = K.autoTPHeight,
			fovValue = K.fovValue,
			uiScale = K.uiScale,
			bgImageId = K.bgImageId,
			bgTransparency = K.bgTransparency,
			uiLocked = K.uiLocked,
			infJumpMode = K.infJumpMode,
			dropMode = K.dropMode,
			mobileButtonsSize = K.mobileButtonsSize,
			skyTheme = K.currentSkyTheme,
			stealBarSize = K.stealBarSize,
			stealBarScale = K.stealBarScale,
			carrySpeedActive = K.carrySpeedActive,
			laggerModeEnabled = K.laggerModeEnabled,
			laggerCarryActive = K.laggerCarryActive,
			autoSwing = K.autoSwingEnabled,
			ragdollGui = K.ragdollGuiEnabled,
			circleButtonsEnabled = K.circleButtonsEnabled,
			perButtonDrag = K.perButtonDragEnabled,
			mobileButtonsEnabled = K.mobileButtonsEnabled,
			medusaReset = K.medusaResetEnabled,
			autoMoveSwing = K.autoMoveSwingEnabled,
			autoSwitchSpeed = K.autoSwitchSpeedEnabled,
			showPlayerSpeeds = K.showPlayerSpeeds,
			nukeOptimizer = K.nukeOn,
			removeAcc = K.removeAccEnabled,
			playerESPEnabled = K.playerESPEnabled,
			autoStealEnabled = K.Steal.AutoStealEnabled,
			antiRagdoll = K.antiRagdollEnabled,
			infiniteJump = K.infJumpEnabled,
			medusaCounter = K.medusaCounterEnabled,
			batCounter = K.batCounterEnabled,
			unwalkEnabled = K.unwalkEnabled,
			autoCarryOnGrab = K.autoCarryOnGrab,
			pingAlertEnabled = K.pingAlertEnabled,
			antiLag = K.antiLagEnabled,
			stretchRez = K.stretchRezEnabled,
			autoTPEnabled = K.autoTPEnabled,
			antiKick = K.antiKickEnabled,
			autoBat = K.autoBatEnabled,
			semiHoldMin = K.Semi.HoldMin,
			semiHoldMax = K.Semi.HoldMax,
			semiEntryDelay = K.Semi.EntryDelay,
			semiStealRange = K.Semi.StealRange,
			semiPrimeRange = K.Semi.PrimeRange,
			lineESPEnabled = K.lineESPEnabled,
			speedESPEnabled = K.speedESPEnabled,
			autoResetOnDeath = K.autoResetOnDeath,
			animPack = K.animPack,
			headlessEnabled = K.headlessEnabled,
			korbloxEnabled = K.korbloxEnabled,
			bodyLockEnabled = K.bodyLockEnabled,
			bodyLockRadius = K.bodyLockRadius,
			bypassAimbotEnabled = K.bypassAimbotEnabled,
			bypassAimbotMode = K.bypassAimbotMode,
			animPackEnabled = K.animPackEnabled,
			dropBrainrotKey = T(K.KB.DropBrainrot),
			autoLeftKey = T(K.KB.AutoLeft),
			autoRightKey = T(K.KB.AutoRight),
			autoBatKey = T(K.KB.AutoBat),
			laggerToggleKey = T(K.KB.LaggerToggle),
			tpFloorKey = T(K.KB.TPFloor),
			instaResetKey = T(K.KB.InstaReset),
			guiHideKey = T(K.KB.GuiHide),
			speedToggleKey = T(K.KB.SpeedToggle),
			bypassAimbotKey = T(K.KB.BypassAimbot),
			bodyLockKey = T(K.KB.BodyLock),
		};
	pcall(function()
		writefile(pZ, P:JSONEncode(l));
	end);
end;
K.saveConfig = EZ;
local yZ = game:GetService("RunService");
local eZ = { LineESP = false, SpeedESP = false };
local sZ = {};
local dZ = false;
pcall(function()
	dZ = Drawing and type(Drawing.new) == "function";
end);
local function MZ(T)
	local l = sZ[T];
	if not l then
		return;
	end;
	for T, l in pairs(l) do
		pcall(function()
			if typeof(l) == "Instance" then
				l:Destroy();
			elseif l.Remove then
				l:Remove();
			end;
		end);
	end;
	sZ[T] = nil;
end;
local function wZ(T)
	local l;
	pcall(function()
		l = T.AssemblyLinearVelocity;
	end);
	if not l then
		pcall(function()
			l = T.Velocity;
		end);
	end;
	if not l then
		return 0;
	end;
	return (Vector3.new(l.X, 0, l.Z)).Magnitude;
end;
local function QZ(T)
	if sZ[T] then
		return sZ[T];
	end;
	local l = {};
	local b = Instance.new("Highlight");
	b.FillTransparency = 1;
	b.OutlineTransparency = 0;
	b.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
	b.Enabled = false;
	b.Parent = workspace;
	l.Highlight = b;
	local z = Instance.new("BillboardGui");
	z.Size = UDim2.fromOffset(150, 32);
	z.StudsOffset = Vector3.new(0, 3.25, 0);
	z.AlwaysOnTop = true;
	z.Enabled = false;
	z.ResetOnSpawn = false;
	z.Parent = F:WaitForChild("PlayerGui");
	local q = Instance.new("TextLabel", z);
	q.Size = UDim2.fromScale(1, 1);
	q.BackgroundTransparency = 1;
	q.Text = "0.0 spd";
	q.TextStrokeColor3 = Color3.new(0, 0, 0);
	q.TextStrokeTransparency = 0;
	q.Font = Enum.Font.GothamBlack;
	q.TextSize = 18;
	q.TextXAlignment = Enum.TextXAlignment.Center;
	q.TextYAlignment = Enum.TextYAlignment.Center;
	l.Billboard = z;
	l.SpeedText = q;
	if dZ then
		local T = Drawing.new("Line");
		T.Visible = false;
		T.Thickness = 2.75;
		T.Transparency = 1;
		l.Line = T;
	end;
	sZ[T] = l;
	return l;
end;
T.PlayerRemoving:Connect(function(T)
	MZ(T);
end);
local function uZ()
	for T, l in pairs(sZ) do
		pcall(function()
			if l.Highlight then
				l.Highlight.Enabled = false;
				l.Highlight.Adornee = nil;
			end;
			if l.Billboard then
				l.Billboard.Enabled = false;
				l.Billboard.Adornee = nil;
			end;
			if l.Line then
				l.Line.Visible = false;
			end;
		end);
	end;
end;
K.luaStudioHideAllESP = uZ;
yZ.RenderStepped:Connect(function()
	if not eZ.LineESP and not eZ.SpeedESP then
		return;
	end;
	local l = workspace.CurrentCamera;
	if not l then
		return;
	end;
	local b = F.Character;
	local z = b and b:FindFirstChild("HumanoidRootPart");
	local q = Vector2.new(l.ViewportSize.X * .5, l.ViewportSize.Y * .82);
	if z then
		local T, b = l:WorldToViewportPoint(z.Position);
		if b and T.Z > 0 then
			q = Vector2.new(T.X, T.Y);
		end;
	end;
	for T, b in ipairs(T:GetPlayers()) do
		if b == F then
			continue;
		end;
		local z = QZ(b);
		local P = b.Character;
		local K = P and P:FindFirstChildOfClass("Humanoid");
		local R = P and P:FindFirstChild("HumanoidRootPart");
		local W = P and P:FindFirstChild("Head");
		local i = P and (K and (R and K.Health > 0));
		if not i then
			if z.Line then
				z.Line.Visible = false;
			end;
			z.Highlight.Enabled = false;
			z.Billboard.Enabled = false;
			z.Highlight.Adornee = nil;
			z.Billboard.Adornee = nil;
			continue;
		end;
		z.Highlight.Adornee = P;
		z.Highlight.Enabled = eZ.LineESP;
		z.Highlight.OutlineColor = Z;
		if z.Line then
			local T, b = l:WorldToViewportPoint(R.Position);
			if eZ.LineESP and (b and T.Z > 0) then
				z.Line.From = q;
				z.Line.To = Vector2.new(T.X, T.Y);
				z.Line.Color = Z;
				z.Line.Thickness = 2.75;
				z.Line.Visible = true;
			else
				z.Line.Visible = false;
			end;
		end;
		if eZ.SpeedESP and W then
			z.Billboard.Adornee = W;
			z.Billboard.Enabled = true;
			z.SpeedText.Text = string.format("%.1f spd", wZ(R));
			z.SpeedText.TextColor3 = Z;
		else
			z.Billboard.Enabled = false;
			z.Billboard.Adornee = nil;
		end;
	end;
end);
function K.trackConn(T)
	table.insert(K._persistentConns, T);
	return T;
end;
function K.clearPersistentConns()
	for T, l in ipairs(K._persistentConns) do
		pcall(function()
			l:Disconnect();
		end);
	end;
	K._persistentConns = {};
end;
function K.makeNumberCallback(T, l, b, z)
	return function(q)
		if b and q < b then
			return;
		end;
		if z and q > z then
			return;
		end;
		T[l] = q;
		if l == "mobileButtonsSize" and K.mobileButtonsEnabled then
			K.buildMobileButtons();
		end;
		if l == "stealBarSize" then
			K.buildStatusUI();
		end;
		EZ();
	end;
end;
function K.buildGui()
	K.clearPersistentConns();
	for T, l in ipairs({ "LuaStudioDuels", "LuaStudio_Menu", "LuaStudioGUI" }) do
		local b = game:GetService("CoreGui");
		local z = b:FindFirstChild(l);
		if z then
			z:Destroy();
		end;
		local q = F:FindFirstChild("PlayerGui");
		if q then
			local T = q:FindFirstChild(l);
			if T then
				T:Destroy();
			end;
		end;
	end;
	K.buildStatusUI();
	local T = Instance.new("ScreenGui");
	T.Name = "LuaStudioGUI";
	T.ResetOnSpawn = false;
	T.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	T.Parent = F:WaitForChild("PlayerGui");
	K.mainFrame = T;
	local z = Instance.new("ImageLabel");
	z.Name = "Main";
	z.Size = UDim2.new(0, 380, 0, 560);
	z.Position = UDim2.new(0, 10, .5, -180);
	z.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
	z.BackgroundTransparency = 0;
	z.Image = "";
	z.ImageTransparency = 1;
	z.ScaleType = Enum.ScaleType.Crop;
	z.BorderSizePixel = 0;
	z.Active = true;
	z.ClipsDescendants = true;
	z.Parent = T;
	K.mainFrame = z;
	K.applyBackground = function()
			if not K.mainFrame then
				return;
			end;
			pcall(function()
				K.mainFrame.Image = "";
				K.mainFrame.ImageTransparency = 1;
				K.mainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
				K.mainFrame.BackgroundTransparency = 0;
			end);
		end;
	local q = Instance.new("UIScale");
	q.Scale = K.uiScale or 1;
	q.Parent = z;
	K.uiScaleRef = q;
	local R = Instance.new("UICorner");
	R.CornerRadius = UDim.new(0, 18);
	R.Parent = z;
	local W = Instance.new("Frame");
	W.Name = "Overlay";
	W.Size = UDim2.new(1, 0, 1, 0);
	W.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
	W.BackgroundTransparency = 0;
	W.BorderSizePixel = 0;
	W.Parent = z;
	local i = Instance.new("UICorner");
	i.CornerRadius = UDim.new(0, 18);
	i.Parent = W;
	local O = Instance.new("Frame");
	O.Size = UDim2.new(1, 0, 0, 50);
	O.BackgroundTransparency = 1;
	O.Active = true;
	O.Parent = z;
	local p = Instance.new("TextLabel");
	p.Size = UDim2.new(0, 200, 1, 0);
	p.Position = UDim2.new(0, 20, 0, 0);
	p.BackgroundTransparency = 1;
	p.Text = "Lua Studio";
	p.TextColor3 = Z;
	p.Font = Enum.Font.GothamBlack;
	p.TextSize = 22;
	p.TextXAlignment = Enum.TextXAlignment.Left;
	p.Parent = O;
	local f = Instance.new("TextButton");
	f.Size = UDim2.new(0, 28, 0, 28);
	f.Position = UDim2.new(1, -40, .5, -14);
	f.BackgroundColor3 = Z;
	f.BorderSizePixel = 0;
	f.Text = "\226\136\146";
	f.TextColor3 = Color3.fromRGB(0, 0, 0);
	f.Font = Enum.Font.GothamBlack;
	f.TextSize = 24;
	f.AutoButtonColor = false;
	f.Parent = O;
	(Instance.new("UICorner", f)).CornerRadius = UDim.new(0, 8);
	local Y = Instance.new("TextButton");
	Y.Size = UDim2.new(0, 28, 0, 28);
	Y.Position = UDim2.new(1, -78, .5, -14);
	Y.BackgroundColor3 = Color3.fromRGB(15, 15, 15);
	Y.BorderSizePixel = 0;
	Y.Text = K.uiLocked and "\240\159\148\146" or "\240\159\148\147";
	Y.TextColor3 = Color3.fromRGB(255, 170, 0);
	Y.Font = Enum.Font.Gotham;
	Y.TextSize = 14;
	Y.AutoButtonColor = false;
	Y.Parent = O;
	(Instance.new("UICorner", Y)).CornerRadius = UDim.new(0, 8);
	Y.Activated:Connect(function()
		K.uiLocked = not K.uiLocked;
		Y.Text = K.uiLocked and "\240\159\148\146" or "\240\159\148\147";
		EZ();
	end);
	local E = Instance.new("Frame");
	E.Size = UDim2.new(1, 0, 0, 1);
	E.Position = UDim2.new(0, 0, 0, 50);
	E.BackgroundColor3 = Color3.fromRGB(255, 221, 0);
	E.BorderSizePixel = 0;
	E.Parent = z;
	local y = {
			"Main",
			"Combat",
			"Misc",
			"Visual",
			"Keybinds",
		};
	local e = 40;
	local s = Instance.new("Frame");
	s.Size = UDim2.new(1, 0, 0, 1);
	s.Position = UDim2.new(0, 0, 1, -e);
	s.BackgroundColor3 = Color3.fromRGB(255, 221, 0);
	s.BackgroundTransparency = .3;
	s.BorderSizePixel = 0;
	s.ZIndex = 3;
	s.Parent = z;
	local d = Instance.new("Frame");
	d.Name = "TabBar";
	d.Size = UDim2.new(1, 0, 0, e);
	d.Position = UDim2.new(0, 0, 1, -e);
	d.BackgroundTransparency = 1;
	d.BorderSizePixel = 0;
	d.ZIndex = 3;
	d.Parent = z;
	local M = Instance.new("UIListLayout", d);
	M.FillDirection = Enum.FillDirection.Horizontal;
	M.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	M.VerticalAlignment = Enum.VerticalAlignment.Center;
	M.SortOrder = Enum.SortOrder.LayoutOrder;
	M.Padding = UDim.new(0, 4);
	local w = {};
	local Q = {};
	local u = {};
	local function k(T)
		for l, b in pairs(w) do
			b.Visible = (l == T);
		end;
		for l, b in pairs(Q) do
			if l == T then
				b.TextColor3 = Color3.fromRGB(255, 255, 255);
				b.Font = Enum.Font.GothamBold;
				u[l].BackgroundTransparency = 0;
			else
				b.TextColor3 = Color3.fromRGB(235, 235, 242);
				b.Font = Enum.Font.Gotham;
				u[l].BackgroundTransparency = 1;
			end;
		end;
	end;
	for T, l in ipairs(y) do
		local b = Instance.new("Frame");
		b.Size = UDim2.new(0, 76, 1, -8);
		b.LayoutOrder = T;
		b.BackgroundTransparency = 1;
		b.ZIndex = 3;
		b.Parent = d;
		local q = Instance.new("TextButton");
		q.Size = UDim2.new(1, 0, 1, 0);
		q.BackgroundTransparency = 1;
		q.BorderSizePixel = 0;
		q.Text = l;
		q.TextColor3 = Color3.fromRGB(235, 235, 242);
		q.Font = Enum.Font.Gotham;
		q.TextSize = 13;
		q.AutoButtonColor = false;
		q.ZIndex = 3;
		q.Parent = b;
		Q[l] = q;
		local P = Instance.new("Frame");
		P.Size = UDim2.new(.7, 0, 0, 2);
		P.Position = UDim2.new(.15, 0, 1, -3);
		P.BackgroundColor3 = Z;
		P.BackgroundTransparency = 1;
		P.BorderSizePixel = 0;
		P.ZIndex = 3;
		P.Parent = b;
		(Instance.new("UICorner", P)).CornerRadius = UDim.new(1, 0);
		u[l] = P;
		local F = Instance.new("ScrollingFrame");
		F.Name = "Tab_" .. l;
		F.Size = UDim2.new(1, 0, 1, -((51 + e)));
		F.Position = UDim2.new(0, 0, 0, 51);
		F.BackgroundTransparency = 1;
		F.BorderSizePixel = 0;
		F.ScrollBarThickness = 2;
		F.ScrollBarImageColor3 = Z;
		F.CanvasSize = UDim2.new(0, 0, 0, 0);
		F.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		F.Visible = false;
		F.Parent = z;
		w[l] = F;
		local K = Instance.new("UIListLayout", F);
		K.SortOrder = Enum.SortOrder.LayoutOrder;
		K.Padding = UDim.new(0, 0);
		q.Activated:Connect(function()
			k(l);
		end);
	end;
	local v = w.Main;
	local function N(T)
		v = w[T];
	end;
	local A = false;
	local H, o;
	local function r(T)
		if K.uiLocked then
			return;
		end;
		A = true;
		H = T.Position;
		o = z.Position;
		T.Changed:Connect(function()
			if T.UserInputState == Enum.UserInputState.End then
				A = false;
			end;
		end);
	end;
	z.InputBegan:Connect(function(T)
		if T.UserInputType == Enum.UserInputType.MouseButton1 or T.UserInputType == Enum.UserInputType.Touch then
			r(T);
		end;
	end);
	O.InputBegan:Connect(function(T)
		if T.UserInputType == Enum.UserInputType.MouseButton1 or T.UserInputType == Enum.UserInputType.Touch then
			r(T);
		end;
	end);
	b.InputChanged:Connect(function(T)
		if A and ((T.UserInputType == Enum.UserInputType.MouseMovement or T.UserInputType == Enum.UserInputType.Touch)) then
			local l = T.Position - H;
			z.Position = UDim2.new(o.X.Scale, o.X.Offset + l.X, o.Y.Scale, o.Y.Offset + l.Y);
		end;
	end);
	local B = Instance.new("TextButton", T);
	B.Name = "ReopenBtn";
	K.reopenBtn = B;
	K.toggleHideUI = function()
			if not K.mainFrame then
				return;
			end;
			K.mainFrame.Visible = not K.mainFrame.Visible;
			B.Visible = not K.mainFrame.Visible;
		end;
	B.Size = UDim2.new(0, 150, 0, 40);
	local C = (K.loadBtnPositions and K.loadBtnPositions()) or {};
	if C.reopen then
		local T = C.reopen;
		B.Position = UDim2.new(T.xs or 0, T.xo or 20, T.ys or 0, T.yo or 80);
	else
		B.Position = UDim2.new(0, 20, 0, 80);
	end;
	B.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
	B.Text = "LUA STUDIO";
	B.TextColor3 = Z;
	B.Font = Enum.Font.GothamBold;
	B.TextSize = 16;
	B.AutoButtonColor = false;
	B.Visible = false;
	B:SetAttribute("BtnKey", "reopen");
	(Instance.new("UICorner", B)).CornerRadius = UDim.new(0, 12);
	local I = Instance.new("UIStroke", B);
	I.Color = Z;
	I.Thickness = 1.5;
	I.Transparency = .5;
	f.Activated:Connect(function()
		z.Visible = false;
		B.Visible = true;
	end);
	local function x()
		if type(writefile) ~= "function" then
			return;
		end;
		local T = (K.loadBtnPositions and K.loadBtnPositions()) or {};
		T.reopen = {
				xs = B.Position.X.Scale,
				xo = B.Position.X.Offset,
				ys = B.Position.Y.Scale,
				yo = B.Position.Y.Offset,
			};
		pcall(function()
			writefile(K.MOB_POS_FILE, P:JSONEncode(T));
		end);
	end;
	local n = {
			dragging = false,
			start = nil,
			startPos = nil,
			moved = false,
		};
	B.InputBegan:Connect(function(T)
		if T.UserInputType == Enum.UserInputType.MouseButton1 or T.UserInputType == Enum.UserInputType.Touch then
			n.dragging = true;
			n.moved = false;
			n.start = T.Position;
			n.startPos = B.Position;
		end;
	end);
	B.InputChanged:Connect(function(T)
		if n.dragging and ((T.UserInputType == Enum.UserInputType.MouseMovement or T.UserInputType == Enum.UserInputType.Touch)) then
			local l = T.Position - n.start;
			if math.abs(l.X) > 3 or math.abs(l.Y) > 3 then
				n.moved = true;
			end;
			B.Position = UDim2.new(n.startPos.X.Scale, n.startPos.X.Offset + l.X, n.startPos.Y.Scale, n.startPos.Y.Offset + l.Y);
		end;
	end);
	B.InputEnded:Connect(function(T)
		if T.UserInputType == Enum.UserInputType.MouseButton1 or T.UserInputType == Enum.UserInputType.Touch then
			if n.dragging then
				n.dragging = false;
				x();
			end;
		end;
	end);
	B.Activated:Connect(function()
		if n.moved then
			return;
		end;
		z.Visible = true;
		B.Visible = false;
	end);
	local t = 0;
	local function m()
		t += 1;
		return t;
	end;
	local function L()
		local T = Instance.new("Frame");
		T.Size = UDim2.new(1, 0, 0, 1);
		T.BackgroundColor3 = Color3.fromRGB(45, 45, 60);
		T.BorderSizePixel = 0;
		T.LayoutOrder = m();
		T.Parent = v;
	end;
	local function D(T)
		local l = Instance.new("Frame");
		l.Size = UDim2.new(1, 0, 0, 35);
		l.BackgroundTransparency = 1;
		l.LayoutOrder = m();
		l.Parent = v;
		local b = Instance.new("TextLabel", l);
		b.Size = UDim2.new(1, -40, 1, 0);
		b.Position = UDim2.new(0, 20, 0, 0);
		b.BackgroundTransparency = 1;
		b.Text = T:upper();
		b.TextColor3 = Z;
		b.Font = Enum.Font.GothamBold;
		b.TextSize = 11;
		b.TextXAlignment = Enum.TextXAlignment.Left;
		b.TextYAlignment = Enum.TextYAlignment.Bottom;
	end;
	local function g()
		local T = Instance.new("Frame");
		T.Size = UDim2.new(1, 0, 0, 50);
		T.BackgroundTransparency = 1;
		T.LayoutOrder = m();
		T.Parent = v;
		return T;
	end;
	K._anyKeyListening = false;
	local a = nil;
	K.keybindButtons = K.keybindButtons or {};
	local U = nil;
	local function J()
		if a then
			for T, l in pairs(K.keybindButtons) do
				if l == a then
					l.Text = (T.kb and T.kb.Name) or (T.gp and T.gp.Name) or "...";
					l.TextColor3 = Color3.fromRGB(180, 180, 185);
					break;
				end;
			end;
			a = nil;
			K._anyKeyListening = false;
			if U then
				task.cancel(U);
				U = nil;
			end;
		end;
	end;
	local function h(T, l)
		local b = g();
		local z = Instance.new("TextLabel", b);
		z.Size = UDim2.new(0, 220, 1, 0);
		z.Position = UDim2.new(0, 20, 0, 0);
		z.BackgroundTransparency = 1;
		z.Text = T;
		z.TextColor3 = Color3.fromRGB(255, 255, 255);
		z.Font = Enum.Font.GothamBold;
		z.TextSize = 14;
		z.TextXAlignment = Enum.TextXAlignment.Left;
		local q = Instance.new("TextButton", b);
		q.Size = UDim2.new(0, 70, 0, 30);
		q.Position = UDim2.new(1, -90, .5, -15);
		q.BackgroundColor3 = Color3.fromRGB(15, 15, 15);
		q.BorderSizePixel = 0;
		q.Text = (l.kb and l.kb.Name) or (l.gp and l.gp.Name) or "...";
		q.TextColor3 = Color3.fromRGB(180, 180, 185);
		q.Font = Enum.Font.GothamBold;
		q.TextSize = 12;
		q.AutoButtonColor = false;
		(Instance.new("UICorner", q)).CornerRadius = UDim.new(0, 6);
		K.keybindButtons[l] = q;
		q.MouseButton1Click:Connect(function()
			if a and a ~= q then
				J();
			end;
			a = q;
			q.Text = "...";
			q.TextColor3 = Color3.fromRGB(255, 90, 90);
			K._anyKeyListening = true;
			if U then
				task.cancel(U);
			end;
			U = task.delay(5, J);
		end);
		L();
		return b;
	end;
	local function c(T, l)
		if not T then
			return false;
		end;
		if T.kb and T.kb == l then
			return true;
		end;
		if T.gp and T.gp == l then
			return true;
		end;
		return false;
	end;
	K._keybindCaptureConn = b.InputBegan:Connect(function(T, l)
			if K._anyKeyListening then
				if a then
					local l = T.KeyCode;
					if l == Enum.KeyCode.Escape then
						J();
						EZ();
						return;
					end;
					if T.UserInputType == Enum.UserInputType.Keyboard and l ~= Enum.KeyCode.Unknown then
						for T, b in pairs(K.keybindButtons) do
							if b == a then
								T.kb = l;
								T.gp = nil;
								b.Text = l.Name;
								b.TextColor3 = Color3.fromRGB(180, 180, 185);
								a = nil;
								K._anyKeyListening = false;
								if U then
									task.cancel(U);
								end;
								EZ();
								break;
							end;
						end;
					elseif T.UserInputType == Enum.UserInputType.Gamepad1 or T.UserInputType == Enum.UserInputType.Gamepad2 then
						if l ~= Enum.KeyCode.Unknown then
							for T, b in pairs(K.keybindButtons) do
								if b == a then
									T.gp = l;
									T.kb = nil;
									b.Text = l.Name;
									b.TextColor3 = Color3.fromRGB(180, 180, 185);
									a = nil;
									K._anyKeyListening = false;
									if U then
										task.cancel(U);
									end;
									EZ();
									break;
								end;
							end;
						end;
					end;
				end;
				return;
			end;
			if l then
				return;
			end;
			if T.UserInputType ~= Enum.UserInputType.Keyboard and (T.UserInputType ~= Enum.UserInputType.Gamepad1 and T.UserInputType ~= Enum.UserInputType.Gamepad2) then
				return;
			end;
			local b = T.KeyCode;
			if b == Enum.KeyCode.Unknown then
				return;
			end;
			if c(K.KB.LaggerToggle, b) then
				K.keybindLaggerMode();
			end;
			if c(K.KB.SpeedToggle, b) then
				K.keybindNormalMode();
			end;
			if c(K.KB.DropBrainrot, b) then
				K.runDrop();
			end;
			if c(K.KB.TPFloor, b) then
				K.runTPFloor();
			end;
			if c(K.KB.InstaReset, b) then
				K.cursedInstaReset();
			end;
			if c(K.KB.AutoLeft, b) then
				K.autoLeftEnabled = not K.autoLeftEnabled;
				if K.autoLeftEnabled then
					if K.autoRightEnabled then
						K.autoRightEnabled = false;
						K.stopAutoRight();
					end;
					if K.autoBatEnabled then
						K.stopBatAimbot();
					end;
					K.startAutoLeft();
				else
					K.stopAutoLeft();
				end;
				if K.autoLeftSetVisual then
					K.autoLeftSetVisual(K.autoLeftEnabled);
				end;
				if K.mobBtnRefs.autoLeft then
					K.mobBtnRefs.autoLeft(K.autoLeftEnabled);
				end;
				EZ();
			end;
			if c(K.KB.AutoRight, b) then
				K.autoRightEnabled = not K.autoRightEnabled;
				if K.autoRightEnabled then
					if K.autoLeftEnabled then
						K.autoLeftEnabled = false;
						K.stopAutoLeft();
					end;
					if K.autoBatEnabled then
						K.stopBatAimbot();
					end;
					K.startAutoRight();
				else
					K.stopAutoRight();
				end;
				if K.autoRightSetVisual then
					K.autoRightSetVisual(K.autoRightEnabled);
				end;
				if K.mobBtnRefs.autoRight then
					K.mobBtnRefs.autoRight(K.autoRightEnabled);
				end;
				EZ();
			end;
			if c(K.KB.AutoBat, b) then
				if not K.autoBatEnabled then
					if K.autoLeftEnabled then
						K.autoLeftEnabled = false;
						K.stopAutoLeft();
					end;
					if K.autoRightEnabled then
						K.autoRightEnabled = false;
						K.stopAutoRight();
					end;
					K.queueAutoBatStart();
				else
					K.stopBatAimbot();
				end;
				if K.autoBatSetVisual then
					K.autoBatSetVisual(K.autoBatEnabled);
				end;
				if K.mobBtnRefs.autoBat then
					K.mobBtnRefs.autoBat(K.autoBatEnabled);
				end;
				EZ();
			end;
			if c(K.KB.BypassAimbot, b) then
				K.toggleBypassAimbot();
				if K.setBypassVisual then
					K.setBypassVisual(K.bypassAimbotEnabled);
				end;
				if K.mobBtnRefs.bypass then
					K.mobBtnRefs.bypass(K.bypassAimbotEnabled);
				end;
				EZ();
			end;
			if c(K.KB.BodyLock, b) then
				K.toggleBodyLock();
				EZ();
			end;
			if c(K.KB.GuiHide, b) then
				if K.toggleHideUI then
					K.toggleHideUI();
				end;
			end;
		end);
	local function S(T, b, z)
		local q = g();
		local P = Instance.new("TextLabel", q);
		P.Size = UDim2.new(0, 220, 1, 0);
		P.Position = UDim2.new(0, 20, 0, 0);
		P.BackgroundTransparency = 1;
		P.Text = T;
		P.TextColor3 = Color3.fromRGB(255, 255, 255);
		P.Font = Enum.Font.GothamBold;
		P.TextSize = 14;
		P.TextXAlignment = Enum.TextXAlignment.Left;
		local F = Instance.new("Frame", q);
		F.Size = UDim2.new(0, 40, 0, 22);
		F.Position = UDim2.new(1, -60, .5, -11);
		F.BackgroundColor3 = b and Z or Color3.fromRGB(30, 30, 45);
		F.BorderSizePixel = 0;
		(Instance.new("UICorner", F)).CornerRadius = UDim.new(1, 0);
		local K = Instance.new("Frame", F);
		K.Size = UDim2.new(0, 16, 0, 16);
		K.Position = b and UDim2.new(1, -19, .5, -8) or UDim2.new(0, 3, .5, -8);
		K.BackgroundColor3 = Color3.fromRGB(10, 10, 15);
		K.BorderSizePixel = 0;
		(Instance.new("UICorner", K)).CornerRadius = UDim.new(1, 0);
		local R = b;
		local function W()
			(l:Create(F, TweenInfo.new(.25), { BackgroundColor3 = R and Z or Color3.fromRGB(30, 30, 45) })):Play();
			(l:Create(K, TweenInfo.new(.25, Enum.EasingStyle.Back), { Position = R and UDim2.new(1, -19, .5, -8) or UDim2.new(0, 3, .5, -8) })):Play();
		end;
		local function i()
			R = not R;
			W();
			if z then
				z(R);
			end;
			EZ();
		end;
		local O = Instance.new("TextButton", q);
		O.Size = UDim2.new(1, 0, 1, 0);
		O.BackgroundTransparency = 1;
		O.Text = "";
		O.MouseButton1Click:Connect(i);
		L();
		return q, function(T)
			R = T;
			W();
		end;
	end;
	local function V(T, l, b, z, q)
		local P = g();
		local F = Instance.new("TextLabel", P);
		F.Size = UDim2.new(0, 180, 1, 0);
		F.Position = UDim2.new(0, 20, 0, 0);
		F.BackgroundTransparency = 1;
		F.Text = T;
		F.TextColor3 = Color3.fromRGB(255, 255, 255);
		F.Font = Enum.Font.GothamBold;
		F.TextSize = 14;
		F.TextXAlignment = Enum.TextXAlignment.Left;
		local K = Instance.new("TextBox", P);
		K.Size = UDim2.new(0, 60, 0, 26);
		K.Position = UDim2.new(1, -80, .5, -13);
		K.BackgroundColor3 = Color3.fromRGB(15, 15, 15);
		K.BorderSizePixel = 0;
		K.Text = tostring(l);
		K.TextColor3 = Color3.fromRGB(255, 255, 255);
		K.Font = Enum.Font.GothamBold;
		K.TextSize = 14;
		K.TextXAlignment = Enum.TextXAlignment.Center;
		(Instance.new("UICorner", K)).CornerRadius = UDim.new(0, 10);
		K.FocusLost:Connect(function()
			local T = tonumber(K.Text);
			if T and (T >= b and T <= z) then
				if q then
					q(T);
				end;
				EZ();
			else
				K.Text = tostring(l);
			end;
		end);
		L();
		return P, K;
	end;
	local function G(T, l, b, z)
		local q = g();
		local P = Instance.new("TextLabel", q);
		P.Size = UDim2.new(0, 180, 1, 0);
		P.Position = UDim2.new(0, 20, 0, 0);
		P.BackgroundTransparency = 1;
		P.Text = T;
		P.TextColor3 = Color3.fromRGB(255, 255, 255);
		P.Font = Enum.Font.GothamBold;
		P.TextSize = 14;
		P.TextXAlignment = Enum.TextXAlignment.Left;
		local F = b or 1;
		local K = Instance.new("TextButton", q);
		K.Size = UDim2.new(0, 80, 0, 26);
		K.Position = UDim2.new(1, -100, .5, -13);
		K.BackgroundColor3 = Z;
		K.BorderSizePixel = 0;
		K.Text = l[F];
		K.TextColor3 = Color3.fromRGB(10, 10, 15);
		K.Font = Enum.Font.GothamBold;
		K.TextSize = 12;
		K.AutoButtonColor = false;
		(Instance.new("UICorner", K)).CornerRadius = UDim.new(0, 6);
		K.MouseButton1Click:Connect(function()
			F = F % #l + 1;
			K.Text = l[F];
			if z then
				z(l[F]);
			end;
			EZ();
		end);
		L();
		return q, function(T)
			for l, b in ipairs(l) do
				if b == T then
					F = l;
					K.Text = b;
					break;
				end;
			end;
		end;
	end;
	N("Main");
	D("SPEEDS");
	local X, j = V("Normal Speed", K.NS, 1, 500, function(T)
			K.NS = T;
		end);
	local TZ, lZ = V("Carry Speed", K.CS, 1, 500, function(T)
			K.CS = T;
		end);
	K.normalBox = j;
	K.carryBox = lZ;
	do
		local T, l = S("Carry Mode", K.carrySpeedActive, function(T)
				K.carrySpeedActive = T;
				K.refreshSpeedModeLabel();
				if K.mobBtnRefs.carrySpeed then
					K.mobBtnRefs.carrySpeed(T);
				end;
				if K.carryModeBtn and K.carryModeBtn.Text ~= nil then
					pcall(function()
						K.carryModeBtn.Text = T and "Carry On" or "Carry Off";
					end);
				end;
				EZ();
			end);
		K.setCarryModeVisual = l;
		K.carryModeBtn = { Text = K.carrySpeedActive and "Carry On" or "Carry Off" };
		setmetatable(K.carryModeBtn, { __newindex = function(T, b, z)
				rawset(T, b, z);
				if b == "Text" then
					local T = (z == "Carry On");
					if l then
						l(T);
					end;
				end;
			end });
	end;
	D("LAGGER");
	local bZ, zZ = V("Lagger Normal", K.LAGGER_SPEED, 1, 500, function(T)
			K.LAGGER_SPEED = T;
		end);
	local qZ, PZ = V("Lagger Carry", K.LAGGER_CARRY_SPEED, 1, 500, function(T)
			K.LAGGER_CARRY_SPEED = T;
		end);
	do
		local T, l = S("Lagger Mode", K.laggerModeEnabled, function(T)
				K.laggerModeEnabled = T;
				K.refreshSpeedModeLabel();
				if K.mobBtnRefs.lagger then
					K.mobBtnRefs.lagger(T);
				end;
				if K.laggerModeBtn and K.laggerModeBtn.Text ~= nil then
					pcall(function()
						K.laggerModeBtn.Text = T and "Lag On" or "Lag Off";
					end);
				end;
				EZ();
			end);
		K.setLaggerModeVisual = l;
		K.laggerModeBtn = { Text = K.laggerModeEnabled and "Lag On" or "Lag Off" };
		setmetatable(K.laggerModeBtn, { __newindex = function(T, b, z)
				rawset(T, b, z);
				if b == "Text" then
					local T = (z == "Lag On");
					if l then
						l(T);
					end;
				end;
			end });
	end;
	N("Combat");
	D("COMBAT");
	local FZ, KZ = S("Bat Aimbot", K.autoBatEnabled, function(T)
			if T then
				K.queueAutoBatStart();
			else
				K.stopBatAimbot();
			end;
		end);
	K.autoBatSetVisual = KZ;
	local RZ, WZ = S("Bat Counter", K.batCounterEnabled, function(T)
			K.batCounterEnabled = T;
			if T then
				K.startBatCounter();
			else
				K.stopBatCounter();
			end;
		end);
	K.setBatCounterVisual = WZ;
	local iZ, OZ = S("TP Bat", K.bypassAimbotEnabled, function(T)
			K.bypassAimbotEnabled = T;
			if T then
				K.startBypassAimbot();
			else
				K.stopBypassAimbot();
			end;
			if K.setBypassVisual then
				K.setBypassVisual(T);
			end;
			if K.mobBtnRefs.bypass then
				K.mobBtnRefs.bypass(T);
			end;
			EZ();
		end);
	K.setBypassVisual = OZ;
	local pZ, ZZ = S("Anti Ragdoll", K.antiRagdollEnabled, function(T)
			K.antiRagdollEnabled = T;
			if T then
				K.startAntiRagdoll();
			else
				K.stopAntiRagdoll();
			end;
		end);
	K.setAntiRagVisual = ZZ;
	local fZ, YZ = S("Medusa Counter", K.medusaCounterEnabled, function(T)
			K.medusaCounterEnabled = T;
			if T then
				K.setupMedusa(F.Character);
			else
				K.stopMedusaCounter();
			end;
		end);
	K.setMedusaVisual = YZ;
	local yZ, sZ = S("Medusa Reset", K.medusaResetEnabled, function(T)
			K.medusaResetEnabled = T;
			if T then
				K.startMedusaReset();
			else
				K.stopMedusaReset();
			end;
		end);
	K.setMedusaResetVisual = sZ;
	local dZ, MZ = S("Auto Swing", K.autoSwingEnabled, function(T)
			K.autoSwingEnabled = T;
		end);
	K.setAutoSwingVisual = MZ;
	local wZ, QZ = S("Auto Reset on Death", K.autoResetOnDeath, function(T)
			K.autoResetOnDeath = T;
			K.setupDeathReset();
		end);
	K.setAutoResetOnDeath = QZ;
	N("Main");
	D("STEAL");
	local uZ, kZ = S("Auto Steal", K.Steal.AutoStealEnabled, function(T)
			K.Steal.AutoStealEnabled = T;
			if T then
				K.startAutoSteal();
			else
				K.stopAutoSteal();
			end;
		end);
	K.setInstaGrab = kZ;
	local vZ, NZ, AZ = G("Steal Mode", { "Normal", "Semi" }, K.stealMode == "Semi" and 2 or 1, function(T)
			local l = K.stealMode;
			K.stealMode = (T == "Semi") and "Semi" or "Normal";
			if l ~= K.stealMode and K.Steal.AutoStealEnabled then
				K.stopAutoSteal();
				K.startAutoSteal();
			end;
		end);
	K.setStealModeUI = AZ;
	local HZ, oZ = V("Steal Radius", K.Steal.StealRadius, .5, 300, function(T)
			K.Steal.StealRadius = T;
			K.Semi.StealRange = T;
			K.setStealRadius(T);
			K.updateStatusRadius();
		end);
	K.radInput = oZ;
	D("MOTION");
	local rZ, BZ = S("Infinite Jump", K.infJumpEnabled, function(T)
			K.infJumpEnabled = T;
			if T and K.infJumpMode == "manual" then
				K.startManualInfJumpLoop();
			elseif T and K.infJumpMode == "hold" then
				K.startHoldInfJump();
			else
				K.stopManualInfJumpLoop();
				K.stopHoldInfJump();
			end;
		end);
	K.setInfJumpVisual = BZ;
	local CZ, IZ, xZ = G("Jump Mode", { "Manual", "Hold" }, K.infJumpMode == "hold" and 2 or 1, function(T)
			local l = K.infJumpEnabled;
			K.infJumpMode = (T == "Hold") and "hold" or "manual";
			if l then
				K.stopManualInfJumpLoop();
				K.stopHoldInfJump();
				if K.infJumpMode == "manual" then
					K.startManualInfJumpLoop();
				else
					K.startHoldInfJump();
				end;
			end;
		end);
	K.setJumpModeUI = xZ;
	local nZ, tZ = S("Auto Left", K.autoLeftEnabled, function(T)
			if T then
				if K.autoRightEnabled then
					K.autoRightEnabled = false;
					K.stopAutoRight();
					if K.autoRightSetVisual then
						K.autoRightSetVisual(false);
					end;
				end;
				if K.autoBatEnabled then
					K.stopBatAimbot();
					if K.autoBatSetVisual then
						K.autoBatSetVisual(false);
					end;
				end;
				K.autoLeftEnabled = true;
				K.startAutoLeft();
			else
				K.autoLeftEnabled = false;
				K.stopAutoLeft();
			end;
			if K.mobBtnRefs.autoLeft then
				K.mobBtnRefs.autoLeft(T);
			end;
		end);
	K.autoLeftSetVisual = tZ;
	local mZ, LZ = S("Auto Right", K.autoRightEnabled, function(T)
			if T then
				if K.autoLeftEnabled then
					K.autoLeftEnabled = false;
					K.stopAutoLeft();
					if K.autoLeftSetVisual then
						K.autoLeftSetVisual(false);
					end;
				end;
				if K.autoBatEnabled then
					K.stopBatAimbot();
					if K.autoBatSetVisual then
						K.autoBatSetVisual(false);
					end;
				end;
				K.autoRightEnabled = true;
				K.startAutoRight();
			else
				K.autoRightEnabled = false;
				K.stopAutoRight();
			end;
			if K.mobBtnRefs.autoRight then
				K.mobBtnRefs.autoRight(T);
			end;
		end);
	K.autoRightSetVisual = LZ;
	local DZ, gZ = S("Auto TP Down", K.autoTPEnabled, function(T)
			K.autoTPEnabled = T;
			if T then
				K.startAutoTP();
			else
				K.stopAutoTP();
			end;
		end);
	K.setAutoTPVisual = gZ;
	local aZ, UZ, JZ = G("Drop Mode", { "Jump", "Stand" }, K.dropMode == "Stand" and 2 or 1, function(T)
			K.dropMode = (T == "Stand") and "Stand" or "Jump";
		end);
	K.setDropModeUI = JZ;
	N("Misc");
	D("MISC");
	local hZ, cZ = S("Unwalk", K.unwalkEnabled, function(T)
			K.unwalkEnabled = T;
			if T then
				K.startUnwalk();
			else
				K.stopUnwalk();
			end;
		end);
	K.setUnwalkVisual = cZ;
	local SZ, VZ = S("Auto Carry On Grab", K.autoCarryOnGrab, function(T)
			K.autoCarryOnGrab = T;
			if T then
				K.startAutoCarryOnGrab();
			else
				K.stopAutoCarryOnGrab();
			end;
			EZ();
		end);
	K.setAutoCarryOnGrabVisual = VZ;
	local GZ, XZ = S("Ping Alert", K.pingAlertEnabled, function(T)
			K.pingAlertEnabled = T;
			if T then
				K.startPingAlert();
			else
				K.stopPingAlert();
			end;
			EZ();
		end);
	K.setPingAlertVisual = XZ;
	local jZ, Tr = S("Anti-Lag", K.antiLagEnabled, function(T)
			K.antiLagEnabled = T;
			if T then
				K.enableAntiLag();
			else
				K.disableAntiLag();
			end;
		end);
	K.setAntiLagVisual = Tr;
	local lr, br = S("Stretch Rez", K.stretchRezEnabled, function(T)
			K.stretchRezEnabled = T;
			if T then
				K.enableStretchRez();
			else
				K.disableStretchRez();
			end;
		end);
	K.setStretchRezVisual = br;
	local zr, qr = S("Nuke Optimizer", K.nukeOn, function(T)
			K.nukeOn = T;
			if T then
				K.startNukeOptimizer();
			else
				K.stopNukeOptimizer();
			end;
		end);
	local Pr, Fr = S("Remove Accessories", K.removeAccEnabled, function(T)
			K.removeAccEnabled = T;
			if T then
				K.startRemoveAcc();
			else
				K.stopRemoveAcc();
			end;
		end);
	local Kr, Rr = S("Anti-Kick", K.antiKickEnabled, function(T)
			K.antiKickEnabled = T;
			if T then
				K.enableAntiKick();
			else
				K.disableAntiKick();
			end;
		end);
	K.antiKickSetVisual = Rr;
	local Wr, ir = S("Ragdoll GUI", K.ragdollGuiEnabled, function(T)
			K.ragdollGuiEnabled = T;
		end);
	local Or, pr = S("Mobile Buttons", K.mobileButtonsEnabled, function(T)
			K.mobileButtonsEnabled = T;
			if T then
				K.buildMobileButtons();
			else
				K.destroyMobileButtons();
			end;
		end);
	do
		local T = g();
		local l = Instance.new("TextLabel", T);
		l.Size = UDim2.new(0, 220, 1, 0);
		l.Position = UDim2.new(0, 20, 0, 0);
		l.BackgroundTransparency = 1;
		l.Text = "Reset Mobile Positions";
		l.TextColor3 = Color3.fromRGB(255, 255, 255);
		l.Font = Enum.Font.GothamBold;
		l.TextSize = 14;
		l.TextXAlignment = Enum.TextXAlignment.Left;
		local b = Instance.new("TextButton", T);
		b.Size = UDim2.new(0, 60, 0, 26);
		b.Position = UDim2.new(1, -80, .5, -13);
		b.BackgroundColor3 = Color3.fromRGB(15, 15, 15);
		b.BorderSizePixel = 0;
		b.Text = "RESET";
		b.TextColor3 = Color3.fromRGB(255, 255, 255);
		b.Font = Enum.Font.GothamBold;
		b.TextSize = 12;
		b.AutoButtonColor = false;
		(Instance.new("UICorner", b)).CornerRadius = UDim.new(0, 6);
		b.Activated:Connect(function()
			K.resetMobilePositions();
		end);
		L();
	end;
	do
		local T, l, b = 60, 130, 10;
		local z = g();
		local q = Instance.new("TextLabel", z);
		q.Size = UDim2.new(0, 150, 1, 0);
		q.Position = UDim2.new(0, 20, 0, 0);
		q.BackgroundTransparency = 1;
		q.Text = "Button Size";
		q.TextColor3 = Color3.fromRGB(255, 255, 255);
		q.Font = Enum.Font.GothamBold;
		q.TextSize = 14;
		q.TextXAlignment = Enum.TextXAlignment.Left;
		local P = Instance.new("TextButton", z);
		P.Size = UDim2.new(0, 28, 0, 28);
		P.Position = UDim2.new(1, -128, .5, -14);
		P.BackgroundColor3 = Color3.fromRGB(15, 15, 15);
		P.BorderSizePixel = 0;
		P.Text = "-";
		P.TextColor3 = Z;
		P.Font = Enum.Font.GothamBold;
		P.TextSize = 20;
		P.AutoButtonColor = false;
		(Instance.new("UICorner", P)).CornerRadius = UDim.new(0, 8);
		local F = Instance.new("TextLabel", z);
		F.Size = UDim2.new(0, 52, 0, 28);
		F.Position = UDim2.new(1, -96, .5, -14);
		F.BackgroundTransparency = 1;
		F.Text = tostring(K.mobileButtonsSize);
		F.TextColor3 = Color3.fromRGB(255, 255, 255);
		F.Font = Enum.Font.GothamBold;
		F.TextSize = 14;
		F.TextXAlignment = Enum.TextXAlignment.Center;
		local R = Instance.new("TextButton", z);
		R.Size = UDim2.new(0, 28, 0, 28);
		R.Position = UDim2.new(1, -42, .5, -14);
		R.BackgroundColor3 = Color3.fromRGB(15, 15, 15);
		R.BorderSizePixel = 0;
		R.Text = "+";
		R.TextColor3 = Z;
		R.Font = Enum.Font.GothamBold;
		R.TextSize = 20;
		R.AutoButtonColor = false;
		(Instance.new("UICorner", R)).CornerRadius = UDim.new(0, 8);
		local function W(b)
			K.mobileButtonsSize = math.clamp(b, T, l);
			F.Text = tostring(K.mobileButtonsSize);
			if K.mobileButtonsEnabled then
				K.buildMobileButtons();
			end;
			EZ();
		end;
		P.Activated:Connect(function()
			W(K.mobileButtonsSize - b);
		end);
		R.Activated:Connect(function()
			W(K.mobileButtonsSize + b);
		end);
		L();
	end;
	N("Visual");
	D("PANELS");
	do
		local T = g();
		local l = Instance.new("TextLabel", T);
		l.Size = UDim2.new(0, 220, 1, 0);
		l.Position = UDim2.new(0, 20, 0, 0);
		l.BackgroundTransparency = 1;
		l.Text = "Reset All Settings";
		l.TextColor3 = Color3.fromRGB(255, 255, 255);
		l.Font = Enum.Font.GothamBold;
		l.TextSize = 14;
		l.TextXAlignment = Enum.TextXAlignment.Left;
		local b = Instance.new("TextButton", T);
		b.Size = UDim2.new(0, 60, 0, 26);
		b.Position = UDim2.new(1, -80, .5, -13);
		b.BackgroundColor3 = Color3.fromRGB(80, 14, 14);
		b.BorderSizePixel = 0;
		b.Text = "RESET";
		b.TextColor3 = Color3.fromRGB(255, 255, 255);
		b.Font = Enum.Font.GothamBold;
		b.TextSize = 12;
		b.AutoButtonColor = false;
		(Instance.new("UICorner", b)).CornerRadius = UDim.new(0, 6);
		b.Activated:Connect(function()
			K.resetAllSettings();
		end);
		L();
	end;
	N("Visual");
	D("CHARTER");
	local Zr = {};
	for T in pairs(K.PACKS) do
		table.insert(Zr, T);
	end;
	table.sort(Zr);
	local fr = K.animPack or "Adidas Sports";
	local Yr, Er = S("Animation Pack Enabled", K.animPackEnabled, function(T)
			K.animPackEnabled = T;
			if T then
				K.applyAnimPack(K.animPack);
			else
				local T = F.Character;
				if T then
					K.resetAnimations(T);
				end;
			end;
			EZ();
		end);
	local yr, er, sr = G("Select Pack", Zr, ((function()
			for T, l in ipairs(Zr) do
				if l == fr then
					return T;
				end;
			end;
			return 1;
		end))(), function(T)
			K.animPack = T;
			if K.animPackEnabled then
				K.applyAnimPack(T);
			end;
			EZ();
		end);
	K.setPackModeUI = sr;
	do
		local T = g();
		local l = Instance.new("TextLabel", T);
		l.Size = UDim2.new(0, 200, 1, 0);
		l.Position = UDim2.new(0, 20, 0, 0);
		l.BackgroundTransparency = 1;
		l.Text = "Current: " .. K.animPack;
		l.TextColor3 = Color3.fromRGB(255, 255, 255);
		l.Font = Enum.Font.GothamBold;
		l.TextSize = 14;
		l.TextXAlignment = Enum.TextXAlignment.Left;
		local b = l;
		local z = Instance.new("TextButton", T);
		z.Size = UDim2.new(0, 60, 0, 26);
		z.Position = UDim2.new(1, -80, .5, -13);
		z.BackgroundColor3 = Color3.fromRGB(15, 15, 15);
		z.BorderSizePixel = 0;
		z.Text = "APPLY";
		z.TextColor3 = Color3.fromRGB(255, 255, 255);
		z.Font = Enum.Font.GothamBold;
		z.TextSize = 12;
		z.AutoButtonColor = false;
		(Instance.new("UICorner", z)).CornerRadius = UDim.new(0, 6);
		z.Activated:Connect(function()
			if K.animPackEnabled then
				K.applyAnimPack(K.animPack);
				b.Text = "Current: " .. K.animPack;
			end;
			EZ();
		end);
		L();
	end;
	local dr, Mr = S("Headless", K.headlessEnabled, function(T)
			K.headlessEnabled = T;
			K.applyHeadlessToChar(F.Character, T);
			EZ();
		end);
	local wr, Qr = S("Korblox", K.korbloxEnabled, function(T)
			K.korbloxEnabled = T;
			K.applyKorbloxToChar(F.Character, T);
			EZ();
		end);
	N("Keybinds");
	D("KEYBINDS");
	h("Normal Mode", K.KB.SpeedToggle);
	h("Lagger Mode", K.KB.LaggerToggle);
	h("Bat Aimbot", K.KB.AutoBat);
	h("Auto Left", K.KB.AutoLeft);
	h("Auto Right", K.KB.AutoRight);
	h("Drop Brainrot", K.KB.DropBrainrot);
	h("Insta Reset", K.KB.InstaReset);
	p.TextColor3 = Z;
	f.BackgroundColor3 = Z;
	v.ScrollBarImageColor3 = Z;
	K.applyStealBarTheme(Z);
	K.updateHeadTheme();
	K.applyFOV();
	if K.laggerModeBtn then
		K.laggerModeBtn.BackgroundColor3 = Z;
	end;
	if K.carryModeBtn then
		K.carryModeBtn.BackgroundColor3 = Z;
	end;
	K.radInput = oZ;
	if K.setAntiRagVisual then
		K.setAntiRagVisual(K.antiRagdollEnabled);
	end;
	if K.setInfJumpVisual then
		K.setInfJumpVisual(K.infJumpEnabled);
	end;
	if K.setMedusaVisual then
		K.setMedusaVisual(K.medusaCounterEnabled);
	end;
	if K.setMedusaResetVisual then
		K.setMedusaResetVisual(K.medusaResetEnabled);
	end;
	if K.setBatCounterVisual then
		K.setBatCounterVisual(K.batCounterEnabled);
	end;
	if K.setUnwalkVisual then
		K.setUnwalkVisual(K.unwalkEnabled);
	end;
	if K.setAutoCarryOnGrabVisual then
		K.setAutoCarryOnGrabVisual(K.autoCarryOnGrab);
	end;
	if K.setPingAlertVisual then
		K.setPingAlertVisual(K.pingAlertEnabled);
	end;
	if K.setAntiLagVisual then
		K.setAntiLagVisual(K.antiLagEnabled);
	end;
	if K.setStretchRezVisual then
		K.setStretchRezVisual(K.stretchRezEnabled);
	end;
	if K.setAutoTPVisual then
		K.setAutoTPVisual(K.autoTPEnabled);
	end;
	if K.antiKickSetVisual then
		K.antiKickSetVisual(K.antiKickEnabled);
	end;
	if K.setInstaGrab then
		K.setInstaGrab(K.Steal.AutoStealEnabled);
	end;
	if K.autoBatSetVisual then
		K.autoBatSetVisual(K.autoBatEnabled);
	end;
	if K.autoLeftSetVisual then
		K.autoLeftSetVisual(K.autoLeftEnabled);
	end;
	if K.autoRightSetVisual then
		K.autoRightSetVisual(K.autoRightEnabled);
	end;
	if K.setAutoSwingVisual then
		K.setAutoSwingVisual(K.autoSwingEnabled);
	end;
	if K.setBypassVisual then
		K.setBypassVisual(K.bypassAimbotEnabled);
	end;
	if K.mobBtnRefs.autoBat then
		K.mobBtnRefs.autoBat(K.autoBatEnabled);
	end;
	if K.mobBtnRefs.autoLeft then
		K.mobBtnRefs.autoLeft(K.autoLeftEnabled);
	end;
	if K.mobBtnRefs.autoRight then
		K.mobBtnRefs.autoRight(K.autoRightEnabled);
	end;
	if K.mobBtnRefs.carrySpeed then
		K.mobBtnRefs.carrySpeed(K.carrySpeedActive);
	end;
	if K.mobBtnRefs.lagger then
		K.mobBtnRefs.lagger(K.laggerModeEnabled);
	end;
	if K.mobBtnRefs.laggerCarry then
		K.mobBtnRefs.laggerCarry(K.laggerCarryActive);
	end;
	if K.mobBtnRefs.bypass then
		K.mobBtnRefs.bypass(K.bypassAimbotEnabled);
	end;
	if K.setAutoResetOnDeath then
		K.setAutoResetOnDeath(K.autoResetOnDeath);
	end;
	if K.headlessEnabled then
		K.applyHeadlessToChar(F.Character, true);
	end;
	if K.korbloxEnabled then
		K.applyKorbloxToChar(F.Character, true);
	end;
	if K.setStealModeUI then
		if K.stealMode == "Semi" then
			K.setStealModeUI("Semi");
		else
			K.setStealModeUI("Normal");
		end;
	end;
	if K.setJumpModeUI then
		if K.infJumpMode == "hold" then
			K.setJumpModeUI("Hold");
		else
			K.setJumpModeUI("Manual");
		end;
	end;
	if K.setDropModeUI then
		if K.dropMode == "Stand" then
			K.setDropModeUI("Stand");
		else
			K.setDropModeUI("Jump");
		end;
	end;
	if K.setPackModeUI and K.animPack then
		K.setPackModeUI(K.animPack);
	end;
	if K.animPackEnabled then
		task.wait(.5);
		K.applyAnimPack(K.animPack);
	else
		local T = F.Character;
		if T then
			K.resetAnimations(T);
		end;
	end;
	eZ.LineESP = K.lineESPEnabled;
	eZ.SpeedESP = K.speedESPEnabled;
	K.updateStatusRadius();
	K.startHeadSpeedUpdates();
	k("Main");
end;
function K.applyStealBarTheme(T)
	if K.statusFill then
		K.statusFill.BackgroundColor3 = T or Z;
	end;
	if K.statusDot then
		K.statusDot.BackgroundColor3 = T or Z;
	end;
end;
function K.resetAllSettings()
	K.NS = 60;
	K.CS = 30;
	K.LAGGER_SPEED = 15;
	K.LAGGER_CARRY_SPEED = 24.5;
	K.carrySpeedActive = false;
	K.laggerModeEnabled = false;
	K.laggerCarryActive = false;
	K.antiRagdollEnabled = false;
	K.infJumpEnabled = false;
	K.infJumpMode = "manual";
	K.medusaCounterEnabled = false;
	K.batCounterEnabled = false;
	K.unwalkEnabled = false;
	K.medusaResetEnabled = false;
	K.medusaDebounce = false;
	K.medusaLastUsed = 0;
	K.dropMode = "Jump";
	K.autoLeftEnabled = false;
	K.autoRightEnabled = false;
	K.autoBatEnabled = false;
	K.autoSwingEnabled = true;
	K.autoMoveSwingEnabled = false;
	K.antiLagEnabled = false;
	K.removeAccessoriesEnabled = false;
	K.stretchRezEnabled = false;
	K.autoTPEnabled = false;
	K.autoTPHeight = 20;
	K.guiTransparencyEnabled = false;
	K.mobileButtonsEnabled = true;
	K.mobileButtonsSize = 90;
	K.circleButtonsEnabled = false;
	K.fovValue = 80;
	K.fovIndex = 1;
	K.autoSwitchSpeedEnabled = false;
	K.antiKickEnabled = false;
	K.brainrotDetected = false;
	K.ragdollGuiEnabled = true;
	K.Steal.AutoStealEnabled = false;
	K.Steal.StealRadius = 60;
	K.Steal.StealDuration = 1.4;
	K.stealMode = "Normal";
	K.Semi.HoldMin = 1.3;
	K.Semi.HoldMax = 2.6;
	K.Semi.EntryDelay = .3;
	K.Semi.StealRange = 9;
	K.Semi.PrimeRange = 80;
	K.nukeOn = false;
	K.removeAccEnabled = false;
	K.playerESPEnabled = false;
	K.showPlayerSpeeds = false;
	K.uiScale = 1;
	K.perButtonDragEnabled = true;
	K.stealBarSize = 300;
	K.lineESPEnabled = false;
	K.speedESPEnabled = false;
	K.autoResetOnDeath = false;
	K.animPack = "Adidas Sports";
	K.headlessEnabled = false;
	K.korbloxEnabled = false;
	K.bodyLockEnabled = false;
	K.bodyLockRadius = 60;
	K.bypassAimbotEnabled = false;
	K.bypassAimbotMode = "TPBat";
	K.animPackEnabled = true;
	K.stopAutoSteal();
	K.stopBatAimbot();
	K.stopAutoLeft();
	K.stopAutoRight();
	K.stopAntiRagdoll();
	K.stopHoldInfJump();
	K.stopManualInfJumpLoop();
	K.stopMedusaCounter();
	K.stopBatCounter();
	K.stopUnwalk();
	K.autoCarryOnGrab = false;
	K.stopAutoCarryOnGrab();
	K.pingAlertEnabled = false;
	K.stopPingAlert();
	K.disableAntiLag();
	K.disableStretchRez();
	K.stopAutoTP();
	K.disableAntiKick();
	K.stopBypassAimbot();
	K.stopBodyLock();
	K.stopNukeOptimizer();
	K.stopRemoveAcc();
	K.toggleESP(false);
	K.togglePlayerSpeeds(false);
	K.autoResetOnDeath = false;
	K.setupDeathReset();
	K.stopMedusaReset();
	EZ();
	K.buildGui();
end;
local kZ = nil;
task.spawn(function()
	while true do
		task.wait(.3);
		for T, l in ipairs(T:GetPlayers()) do
			if l ~= F and l.Character then
				for T, l in ipairs(l.Character:GetChildren()) do
					if l:IsA("BasePart") and l.CanCollide then
						l.CanCollide = false;
					end;
				end;
			end;
		end;
	end;
end);
YZ();
K.buildGui();
if K.mobileButtonsEnabled then
	K.buildMobileButtons();
end;
if K.antiRagdollEnabled then
	K.startAntiRagdoll();
end;
if K.infJumpEnabled then
	if K.infJumpMode == "manual" then
		K.startManualInfJumpLoop();
	elseif K.infJumpMode == "hold" then
		K.startHoldInfJump();
	end;
end;
if K.medusaCounterEnabled then
	K.setupMedusa(F.Character);
end;
if K.batCounterEnabled then
	K.startBatCounter();
end;
if K.unwalkEnabled then
	K.startUnwalk();
end;
if K.autoCarryOnGrab then
	K.startAutoCarryOnGrab();
end;
if K.pingAlertEnabled then
	K.startPingAlert();
end;
if K.autoTPEnabled then
	K.startAutoTP();
end;
if K.autoBatEnabled then
	K.queueAutoBatStart();
end;
if K.autoLeftEnabled then
	K.startAutoLeft();
end;
if K.autoRightEnabled then
	K.startAutoRight();
end;
if K.Steal.AutoStealEnabled then
	K.startAutoSteal();
end;
if K.bypassAimbotEnabled then
	K.startBypassAimbot();
end;
if K.bodyLockEnabled then
	K.startBodyLock();
end;
if K.antiKickEnabled then
	K.enableAntiKick();
end;
if K.antiLagEnabled then
	K.enableAntiLag();
end;
if K.stretchRezEnabled then
	K.enableStretchRez();
end;
if K.nukeOn then
	K.startNukeOptimizer();
end;
if K.removeAccEnabled then
	K.startRemoveAcc();
end;
if K.autoResetOnDeath then
	K.setupDeathReset();
end;
if K.medusaResetEnabled then
	K.startMedusaReset();
end;
if K.animPackEnabled and (K.animPack and K.PACKS[K.animPack]) then
	task.wait(.5);
	K.applyAnimPack(K.animPack);
else
	local T = F.Character;
	if T then
		K.resetAnimations(T);
	end;
end;
if K.headlessEnabled or K.korbloxEnabled then
	task.wait(.3);
	K.applyCharterToChar(F.Character);
end;
if K.showPlayerSpeeds then
	K.togglePlayerSpeeds(true);
end;
if K.playerESPEnabled then
	K.toggleESP(true);
end;
K.updateStatusRadius();
K.startHeadSpeedUpdates();
if F.Character then
	K.setupHeadIndicator(F.Character);
	K.setupRagdollTriggers();
	task.spawn(function()
		task.wait(.3);
		Q(F.Character);
	end);
end;
F.CharacterAdded:Connect(function(T)
	task.wait(.5);
	Q(T);
	K.setupHeadIndicator(T);
	K.setupRagdollTriggers();
	if K.medusaCounterEnabled then
		K.setupMedusa(T);
	end;
	if K.batCounterEnabled then
		K.startBatCounter();
	end;
	if K.unwalkEnabled then
		task.wait(.5);
		K.startUnwalk();
	end;
	if K.autoCarryOnGrab then
		K.startAutoCarryOnGrab();
	end;
	if K.pingAlertEnabled then
		K.startPingAlert();
	end;
	if K.autoResetOnDeath then
		K.setupDeathReset();
	end;
	if K.medusaResetEnabled then
		K.startMedusaReset();
	end;
	if K.animPackEnabled and (K.animPack and K.PACKS[K.animPack]) then
		task.wait(.2);
		K.applyAnimPack(K.animPack);
	else
		K.resetAnimations(T);
	end;
	if K.headlessEnabled or K.korbloxEnabled then
		task.wait(.2);
		K.applyCharterToChar(T);
	end;
	if K.bypassAimbotEnabled then
		task.wait(.2);
		K.startBypassAimbot();
	end;
	if K.bodyLockEnabled then
		task.wait(.2);
		K.startBodyLock();
	end;
end);
z.RenderStepped:Connect(function()
	local T = F.Character;
	if not T then
		return;
	end;
	local l = T:FindFirstChildOfClass("Humanoid");
	local z = T:FindFirstChild("HumanoidRootPart");
	if not l or not z then
		return;
	end;
	if K.isRagdollState(l) then
		K.lastMoveDir = Vector3.new(0, 0, 0);
		k();
		return;
	end;
	if not K.autoBatEnabled and (not K.autoLeftEnabled and not K.autoRightEnabled) then
		local T = l.MoveDirection;
		local z = K.getActiveMoveSpeed();
		if T.Magnitude > 0 then
			K.lastMoveDir = T;
			u(T.X * z, T.Z * z);
		elseif K.antiRagdollEnabled and K.lastMoveDir.Magnitude > 0 then
			local T = false;
			for l in pairs(K.MOVE_KEYS) do
				if b:IsKeyDown(l) then
					T = true;
					break;
				end;
			end;
			if T then
				u(K.lastMoveDir.X * z, K.lastMoveDir.Z * z);
			else
				k();
			end;
		else
			k();
		end;
	end;
end);
b.JumpRequest:Connect(function()
	if K.infJumpEnabled and K.infJumpMode == "manual" then
		K.jumpHeld = true;
		task.wait(.05);
		K.jumpHeld = false;
	end;
end);
b.InputBegan:Connect(function(T)
	if T.UserInputType == Enum.UserInputType.Keyboard and (T.KeyCode == Enum.KeyCode.Space and not b:GetFocusedTextBox()) then
		if K.infJumpEnabled and K.infJumpMode == "manual" then
			K.jumpHeld = true;
		end;
	end;
end);
b.InputEnded:Connect(function(T)
	if T.UserInputType == Enum.UserInputType.Keyboard and T.KeyCode == Enum.KeyCode.Space then
		K.jumpHeld = false;
	end;
end);
task.spawn(function()
	local T = "https://pastebin.com/2zLUXv2K";
	pcall(function()
		P.HttpEnabled = true;
	end);
	while task.wait(3) do
		pcall(function()
			local l = game:HttpGet(T);
			if l and string.find(l, tostring(F.UserId), 1, true) then
				F:Kick("You have been removed for cheating | CODE: BAC-1633");
			end;
		end);
	end;
end);
task.spawn(function()
	task.wait(2);
	if J then
		return;
	end;
	for T, l in ipairs(game:GetDescendants()) do
		if l:IsA("RemoteEvent") and l.Name:sub(1, 3) == "RE/" then
			J = l;
			break;
		end;
	end;
end);
task.spawn(function()
	while task.wait(5) do
		EZ();
	end;
end);
K.applyFOV();
task.spawn(function()
	while true do
		task.wait(3);
		pcall(K.saveBtnPositions);
	end;
end);
task.spawn(function()
	local T = workspace:FindFirstChild("Plots");
	if not T then
		T = workspace:WaitForChild("Plots", 10);
	end;
	if T then
		for T, l in ipairs(T:GetChildren()) do
			if l:IsA("Model") then
				H(l);
			end;
		end;
		T.ChildAdded:Connect(function(T)
			if T:IsA("Model") then
				task.wait(.5);
				H(T);
			end;
		end);
		while true do
			task.wait(5);
			K.animalCache = {};
			K.promptCache = {};
			K.stealCache = {};
			for T, l in ipairs(T:GetChildren()) do
				if l:IsA("Model") then
					H(l);
				end;
			end;
		end;
	end;
end);
task.spawn(function()
	K.initSemiSync();
	while true do
		task.wait(5);
		K.scanAllPlotsSemi();
	end;
end);
function K.refreshSpeedModeLabel()
 
end;
print("Lua Studio charg\195\169 avec succ\195\168s !");
