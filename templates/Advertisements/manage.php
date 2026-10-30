<?php
$this->assign('title', 'Manage Applicants | JobMatch');

$statusLabels = [0 => 'Pending', 1 => 'Approved', 2 => 'Rejected'];
$statusColors = [0 => 'warning text-dark', 1 => 'success', 2 => 'danger'];

$buildOfferLetter = function ($name, $position, $jobType = '') {
    $today = date('j F Y');
    $name = $name !== '' ? $name : 'Applicant';
    $position = $position !== '' ? $position : 'the position';
    $jobType = $jobType !== '' ? $jobType : 'Full Time';
    $POS = strtoupper($position);
    return "To      : {$name}\n"
        . "From    : Human Resource Department, JobMatch\n"
        . "Date    : {$today}\n"
        . "Subject : Offer of Employment — {$POS}\n\n"
        . "Dear {$name},\n\n"
        . "I am pleased to inform you, on behalf of JobMatch, that following the review of your "
        . "application and qualifications, you have been selected for the position of {$position}. "
        . "We were impressed with your background and are confident that you will be a valuable "
        . "addition to our team.\n\n"
        . "This letter serves as a formal offer of employment. The key details of your appointment "
        . "are as follows:\n\n"
        . "   1. Position          : {$position}\n"
        . "   2. Employment Type    : {$jobType}\n"
        . "   3. Reporting To       : Head of Department\n"
        . "   4. Commencement Date  : To be mutually agreed upon\n"
        . "   5. Remuneration       : As stated in your employment contract\n\n"
        . "We would be grateful if you could confirm your acceptance of this offer in writing at your "
        . "earliest convenience. Should you have any questions regarding this offer, please do not "
        . "hesitate to contact our Human Resource Department.\n\n"
        . "We look forward to welcoming you to JobMatch and to a long and successful working "
        . "relationship.\n\n"
        . "Thank you for your interest in joining our organisation.\n\n"
        . "Yours sincerely,\n\n\n"
        . "_______________________\n"
        . "Human Resource Department\n"
        . "JobMatch\n"
        . "Connect · Match · Succeed";
};
?>
<div class="d-flex justify-content-between align-items-center mb-3">
    <h3 class="page-heading mb-0">Manage Applicants — <?= h($advertisement->title) ?></h3>
    <?= $this->Html->link('<i class="fa-solid fa-arrow-left"></i> Back',
        ['action' => 'index'], ['class' => 'btn btn-outline-dark', 'escape' => false]) ?>
</div>

<div class="count-card">
    <div class="count-number"><?= $applicantCount ?></div>
    <div>
        <h5 class="mb-0">people interested &amp; submitted resume</h5>
        <small class="text-muted">for this position</small>
    </div>
</div>

<?php if ($applicantCount > 0): ?>
    <table class="table jm-table">
        <thead>
            <tr><th>#</th><th>Name</th><th>Applied Date</th><th>Resume</th><th>Status</th><th>Action</th></tr>
        </thead>
        <tbody>
            <?php foreach ($advertisement->applications as $i => $application): ?>
                <?php
                    $st = (int)$application->status;
                    $applicantName = $application->member->name ?? '';
                    $letterValue = !empty($application->offer_letter)
                        ? $application->offer_letter
                        : $buildOfferLetter($applicantName, $advertisement->title, $advertisement->job_type);
                ?>
                <tr>
                    <td><?= $i + 1 ?></td>
                    <td>
                        <?= $this->Html->link(h($applicantName ?: '-'),
                            ['action' => 'applicantProfile', $application->id],
                            ['escape' => false, 'style' => 'color:#0f1b2d;font-weight:600;text-decoration:none;']) ?>
                    </td>
                    <td><?= $application->created ? $application->created->format('d/m/Y') : '-' ?></td>
                    <td>
                        <?php if (!empty($application->member->resume)): ?>
                            <?= $this->Html->link('<i class="fa-solid fa-download"></i>',
                                ['action' => 'downloadResume', $application->id],
                                ['class' => 'btn btn-sm btn-gold', 'escape' => false, 'target' => '_blank', 'title' => 'Download']) ?>
                        <?php else: ?>
                            <span class="text-muted">None</span>
                        <?php endif; ?>
                    </td>
                    <td>
                        <span class="badge bg-<?= $statusColors[$st] ?? 'secondary' ?>">
                            <?= $statusLabels[$st] ?? 'Unknown' ?>
                        </span>
                    </td>
                    <td>
                        <?= $this->Form->postLink('<i class="fa-solid fa-check"></i>',
                            ['action' => 'changeStatus', $application->id, 1],
                            ['class' => 'btn btn-sm btn-success', 'escape' => false, 'title' => 'Approve']) ?>
                        <?= $this->Form->postLink('<i class="fa-solid fa-clock"></i>',
                            ['action' => 'changeStatus', $application->id, 0],
                            ['class' => 'btn btn-sm btn-warning text-dark', 'escape' => false, 'title' => 'Pending']) ?>
                        <?= $this->Form->postLink('<i class="fa-solid fa-xmark"></i>',
                            ['action' => 'changeStatus', $application->id, 2],
                            ['class' => 'btn btn-sm btn-danger', 'escape' => false, 'title' => 'Reject']) ?>
                        <?php if ($st === 1): ?>
                            <button type="button" class="btn btn-sm btn-outline-dark"
                                    onclick="toggleRow('offer<?= $application->id ?>')" title="Offer Letter">
                                <i class="fa-solid fa-envelope-open-text"></i>
                            </button>
                        <?php endif; ?>
                    </td>
                </tr>

                <?php if ($st === 1): ?>
                    <tr id="offer<?= $application->id ?>" style="display:none;">
                        <td colspan="6" style="background:#faf8f2;">
                            <?= $this->Form->create(null, ['url' => ['action' => 'offerLetter', $application->id]]) ?>
                            <div class="d-flex justify-content-between align-items-center mb-2">
                                <label class="form-label mb-0"><strong>Offer Letter</strong> for <?= h($applicantName) ?></label>
                                <div>
                                    <button type="button" class="btn btn-sm btn-outline-secondary"
                                            onclick="resetLetter('letter<?= $application->id ?>')">
                                        <i class="fa-solid fa-rotate-left"></i> Reset to template
                                    </button>
                                    <?php if (!empty($application->offer_letter)): ?>
                                        <?= $this->Html->link('<i class="fa-solid fa-file-arrow-down"></i> Download A4',
                                            ['controller' => 'Applications', 'action' => 'letter', $application->id],
                                            ['class' => 'btn btn-sm btn-outline-dark', 'escape' => false, 'target' => '_blank']) ?>
                                    <?php endif; ?>
                                </div>
                            </div>
                            <?= $this->Form->textarea('offer_letter', [
                                'id' => 'letter' . $application->id,
                                'class' => 'form-control mb-2',
                                'rows' => 16,
                                'value' => $letterValue,
                                'data-template' => $buildOfferLetter($applicantName, $advertisement->title, $advertisement->job_type),
                                'style' => 'font-family:Inter,sans-serif; font-size:0.9rem;',
                            ]) ?>
                            <?= $this->Form->button('<i class="fa-solid fa-paper-plane"></i> Save & Send Offer Letter',
                                ['class' => 'btn btn-sm btn-gold', 'escapeTitle' => false]) ?>
                            <?php if (!empty($application->offer_letter)): ?>
                                <span class="text-success ms-2"><i class="fa-solid fa-circle-check"></i> Offer letter sent</span>
                            <?php endif; ?>
                            <?= $this->Form->end() ?>
                        </td>
                    </tr>
                <?php endif; ?>
            <?php endforeach; ?>
        </tbody>
    </table>
<?php else: ?>
    <div class="panel-card">No one has applied for this position yet.</div>
<?php endif; ?>

<script>
function toggleRow(id){
    var r = document.getElementById(id);
    if (!r) return;
    r.style.display = (r.style.display === 'none' || r.style.display === '') ? 'table-row' : 'none';
}
function resetLetter(id){
    var t = document.getElementById(id);
    if (t && t.dataset.template) { t.value = t.dataset.template; }
}
</script>