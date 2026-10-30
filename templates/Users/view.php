<!DOCTYPE html>
<html>
<head>
    <title>User Detail | JobMatch</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600;700&family=Inter:wght@400;500;600&display=swap" rel="stylesheet">
<style>
* { font-family: 'Inter', sans-serif; box-sizing: border-box; }
body { margin:0; background:#f4f2ed; transition:background .3s,color .3s; }
.brand-logo { height:120px; width:auto; object-fit:contain; transition:all .3s; }
.sidebar { width:260px; height:100vh; position:fixed; left:0; top:0; background:#0f1b2d; color:#cfd3da; transition:.3s; overflow-x:hidden; border-right:1px solid rgba(255,255,255,.05); z-index:10; }
.sidebar.collapsed { width:70px; }
.sidebar .brand-mark { text-align:center; margin-bottom:8px; }
.sidebar a { display:flex; align-items:center; gap:12px; padding:13px 22px; color:#aab0bc; text-decoration:none; font-size:.9rem; font-weight:500; border-left:3px solid transparent; transition:.2s; }
.sidebar a:hover, .sidebar a.active { background:rgba(201,162,39,.08); color:#e0c468; border-left:3px solid #c9a227; }
.sidebar a.logout { color:#c0786f; margin-top:10px; border-top:1px solid rgba(255,255,255,.08); }
.sidebar.collapsed span.text { display:none; }
.sidebar.collapsed .brand-logo { height:60px; width:40px; }
.topbar { height:64px; background:#fff; display:flex; justify-content:space-between; align-items:center; padding:0 24px; position:fixed; top:0; left:260px; right:0; z-index:9; box-shadow:0 2px 8px rgba(15,27,45,.06); border-bottom:1px solid #e8e4da; transition:left .3s,background .3s; }
.topbar.collapsed { left:70px; }
.dark-mode-toggle { background:#0f1b2d; border:none; color:#e0c468; border-radius:5px; padding:6px 12px; cursor:pointer; font-size:1rem; }
.content { margin-left:260px; margin-top:64px; padding:28px 32px; transition:.3s; }
.content.expanded { margin-left:70px; }
.page-heading { font-family:'Playfair Display',serif; color:#0f1b2d; font-weight:700; margin:0 0 18px; }
.panel-card { background:#fff; border-radius:8px; padding:22px; box-shadow:0 2px 10px rgba(15,27,45,.06); }
.u-search { display:flex; gap:10px; flex-wrap:wrap; align-items:center; margin-bottom:20px; }
.u-search input, .u-search select { padding:10px 14px; border:1px solid #d9d4c8; border-radius:8px; font-size:.9rem; background:#fff; color:#3a3a3a; }
.u-search input { flex:1; min-width:200px; }
.u-search input:focus, .u-search select:focus { outline:none; border-color:#c9a227; box-shadow:0 0 0 3px rgba(201,162,39,.15); }
.btn-gold { background:#c9a227; color:#0f1b2d; border:none; border-radius:8px; padding:10px 20px; font-weight:600; cursor:pointer; font-size:.88rem; text-decoration:none; display:inline-flex; align-items:center; gap:6px; }
.btn-gold:hover { background:#b8911f; color:#0f1b2d; }
.btn-clear { background:#efece4; color:#333; border-radius:8px; padding:10px 16px; text-decoration:none; font-weight:600; font-size:.88rem; }
.u-table { width:100%; border-collapse:collapse; }
.u-table th { text-align:left; font-size:.78rem; color:#6b7280; padding:10px 8px; border-bottom:2px solid #eee; text-transform:uppercase; letter-spacing:.4px; }
.u-table td { padding:11px 8px; border-bottom:1px solid #f0f0f0; font-size:.9rem; color:#3a3a3a; }
.tag { padding:4px 11px; border-radius:20px; font-size:.76rem; font-weight:600; }
.tag.admin { background:#e2d3f0; color:#5a2c86; }
.tag.user { background:#d1e7dd; color:#0f5132; }
.tag.active { background:#d1e7dd; color:#0f5132; }
.tag.inactive { background:#f8d7da; color:#842029; }
.btn-view { border:1px solid #0f1b2d; color:#0f1b2d; padding:5px 11px; border-radius:6px; text-decoration:none; font-size:.8rem; }
.btn-view:hover { background:#0f1b2d; color:#fff; }
.btn-edit { border:1px solid #c9a227; color:#8a6d00; padding:5px 11px; border-radius:6px; text-decoration:none; font-size:.8rem; }
.btn-del { border:1px solid #c0392b; color:#c0392b; padding:5px 11px; border-radius:6px; text-decoration:none; font-size:.8rem; background:none; cursor:pointer; }
.form-group { margin-bottom:18px; }
.form-group label { display:block; font-size:.78rem; font-weight:600; color:#4a4438; text-transform:uppercase; letter-spacing:.4px; margin-bottom:6px; }
.form-group input, .form-group select { width:100%; padding:10px 14px; border:1px solid #d9d4c8; border-radius:8px; font-size:.95rem; background:#fff; color:#3a3a3a; }
.form-group input:focus, .form-group select:focus { outline:none; border-color:#c9a227; box-shadow:0 0 0 3px rgba(201,162,39,.15); }
.form-grid { display:grid; grid-template-columns:1fr 1fr; gap:0 20px; }
.form-actions { margin-top:8px; display:flex; gap:10px; }
.btn-submit { background:#c9a227; color:#0f1b2d; border:none; border-radius:8px; padding:11px 26px; font-weight:600; cursor:pointer; }
.btn-back { border:1px solid #0f1b2d; color:#0f1b2d; padding:11px 22px; border-radius:8px; text-decoration:none; font-size:.9rem; }
.detail-row { display:flex; padding:12px 0; border-bottom:1px solid #f0f0f0; }
.detail-row .label { width:170px; color:#6b7280; font-size:.8rem; text-transform:uppercase; letter-spacing:.4px; font-weight:600; }
.detail-row .value { flex:1; color:#3a3a3a; font-size:.95rem; }
.hint { font-size:.74rem; color:#8a8478; margin-top:5px; }
[data-bs-theme="dark"] body { background:#11161f; }
[data-bs-theme="dark"] .topbar { background:#1a2233; }
[data-bs-theme="dark"] .page-heading { color:#e0c468; }
[data-bs-theme="dark"] .panel-card { background:#1a2233; color:#cfd3da; }
[data-bs-theme="dark"] .u-table td, [data-bs-theme="dark"] .detail-row .value { color:#cfd3da; }
[data-bs-theme="dark"] .u-table td, [data-bs-theme="dark"] .detail-row { border-bottom:1px solid rgba(255,255,255,.06); }
[data-bs-theme="dark"] .u-search input, [data-bs-theme="dark"] .u-search select,
[data-bs-theme="dark"] .form-group input, [data-bs-theme="dark"] .form-group select { background:#141d2e; border-color:rgba(255,255,255,.12); color:#cfd3da; }
[data-bs-theme="dark"] .btn-clear { background:#242e42; color:#cfd3da; }
[data-bs-theme="dark"] .btn-view, [data-bs-theme="dark"] .btn-back { border-color:#e0c468; color:#e0c468; }
</style>
</head>
<body>

<?php
    $sessionUser = $this->request->getSession()->read('user');
    $sbRole = (int)($sessionUser->role_id ?? 0);
?>
<div class="sidebar" id="sidebar">
    <div class="brand-mark">
        <img src="<?= $this->Url->image('logo.png') ?>" alt="JobMatch Logo" class="brand-logo">
    </div>
    <a href="<?= $this->Url->build(['controller' => 'Users', 'action' => 'dashboard']) ?>">
        <i class="fa-solid fa-house"></i> <span class="text">Dashboard</span>
    </a>
    <a href="<?= $this->Url->build(['controller' => 'Members', 'action' => 'myProfile']) ?>">
        <i class="fa-solid fa-user"></i> <span class="text">Profile</span>
    </a>
    <?php if ($sbRole !== 1): ?>
    <a href="<?= $this->Url->build(['controller' => 'Applications', 'action' => 'index']) ?>">
        <i class="fa-solid fa-file-lines"></i> <span class="text">Application</span>
    </a>
    <?php endif; ?>
    <?php if ($sbRole === 1): ?>
    <a href="<?= $this->Url->build(['controller' => 'Advertisements', 'action' => 'index']) ?>">
        <i class="fa-solid fa-bullhorn"></i> <span class="text">Advertisement</span>
    </a>
    <a href="<?= $this->Url->build(['controller' => 'Users', 'action' => 'index']) ?>" class="active">
        <i class="fa-solid fa-users"></i> <span class="text">Users</span>
    </a>
    <a href="<?= $this->Url->build(['controller' => 'AuditLogs', 'action' => 'index']) ?>">
        <i class="fa-solid fa-clock-rotate-left"></i> <span class="text">Audit Logs</span>
    </a>
    <?php endif; ?>
    <a href="<?= $this->Url->build(['controller' => 'Users', 'action' => 'logout']) ?>" class="logout">
        <i class="fa-solid fa-right-from-bracket"></i> <span class="text">Logout</span>
    </a>
</div>

<div class="topbar" id="topbar">
    <button onclick="toggleSidebar()" class="dark-mode-toggle">☰</button>
    <button class="dark-mode-toggle" id="darkModeToggle"><i class="fa-solid fa-moon" id="darkModeIcon"></i></button>
</div>

<div class="content" id="content">
    <h3 class="page-heading">User Detail</h3>
    <?= $this->Html->link('<i class="fa-solid fa-arrow-left"></i> Back', ['action' => 'index'], ['class' => 'btn-back', 'escape' => false]) ?>
    <div class="panel-card" style="max-width:720px; margin-top:14px;">
        <?php $isAdmin = ((int)$user->role_id === 1); $isActive = ((string)$user->status === '1'); ?>
        <div class="detail-row"><div class="label">ID</div><div class="value">#<?= h($user->id) ?></div></div>
        <div class="detail-row"><div class="label">Full Name</div><div class="value"><?= h($user->fullname) ?></div></div>
        <div class="detail-row"><div class="label">Email</div><div class="value"><?= h($user->email) ?></div></div>
        <div class="detail-row"><div class="label">Role</div><div class="value"><span class="tag <?= $isAdmin ? 'admin' : 'user' ?>"><?= $isAdmin ? 'Admin' : 'User' ?></span></div></div>
        <div class="detail-row"><div class="label">Status</div><div class="value"><span class="tag <?= $isActive ? 'active' : 'inactive' ?>"><?= $isActive ? 'Active' : 'Inactive' ?></span></div></div>
        <div class="detail-row"><div class="label">Email Verified</div><div class="value"><?= ((int)$user->is_email_verified === 1) ? 'Yes' : 'No' ?></div></div>
        <div class="detail-row"><div class="label">Last Login</div><div class="value"><?= $user->last_login ? $user->last_login->format('d/m/Y g:i A') : '-' ?></div></div>
        <div class="detail-row"><div class="label">Created</div><div class="value"><?= $user->created ? $user->created->format('d/m/Y g:i A') : '-' ?></div></div>
        <div class="form-actions" style="margin-top:18px;">
            <?= $this->Html->link('Edit User', ['action' => 'edit', $user->id], ['class' => 'btn-submit', 'style' => 'text-decoration:none;']) ?>
        </div>
    </div>
</div>
<script>
function toggleSidebar(){document.getElementById('sidebar').classList.toggle('collapsed');document.getElementById('content').classList.toggle('expanded');document.getElementById('topbar').classList.toggle('collapsed');}
const dt=document.getElementById('darkModeToggle'),di=document.getElementById('darkModeIcon'),he=document.documentElement,st=localStorage.getItem('theme')||'light';
he.setAttribute('data-bs-theme',st);ic(st);
dt.addEventListener('click',()=>{const c=he.getAttribute('data-bs-theme'),n=c==='light'?'dark':'light';he.setAttribute('data-bs-theme',n);localStorage.setItem('theme',n);ic(n);});
function ic(t){di.className=t==='dark'?'fa-solid fa-sun':'fa-solid fa-moon';}
</script>
</body>
</html>